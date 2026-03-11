-- simulate both smart farms and pYPP drilling in the same entity

local drills, products, resouce_pointers = {}, {}, {}

for _, metadata in pairs{
  {
    drill = "geothermal-plant-mk01",
    base = "geothermal-plant-mk01-base",
    silo = "geothermal-plant-mk01-silo",
    resource = "geothermal-crack"
  }
} do
  resouce_pointers[metadata.resource] = metadata.drill
  metadata.resources = {metadata.resource, metadata.resource .. "-borehole"}
  drills[metadata.drill] = metadata
end

for _, metadata in pairs{
  {
    item = "replicator-rennea",
    resource = "geothermal-crack-borehole",
    rand_min = 5,
    rand_max = 40,
    base_mult = 100,
  }
} do
  products[metadata.item] = metadata
end

script.on_load(function()
  for _, patch in pairs{
    "geothermal-crack-borehole"
  } do
    remote.call("py-drilling", "add-resource-patch", patch)
  end

  for drill, metadata in pairs{
    ["geothermal-plant-mk01"] = {
      base = "geothermal-plant-mk01-base",
      resource = "geothermal-crack",
      fluid = "geothermal-water",
      rand_min = 1,
      rand_max = 4,
      base_mult = 1,
      drill_tier_mult = 0,
      fluid_tier_mult = 2,
      alert = "bitumen-seep-alert"
    }
  } do
    remote.call("py-drilling", "add-mining-drill", drill, metadata)
  end
end)

---@param event EventData.on_rocket_launched
py.on_event(defines.events.on_rocket_launched, function(event)
  local silo = event.rocket_silo --[[@as LuaEntity]]
  if not silo or not silo.valid then return end -- silo died after launch started
  local drill_data = drills[silo.name:sub(1, -6)]
  if not drill_data then return end
  local satellite = event.rocket.cargo_pod.get_inventory(defines.inventory.cargo_unit).get_contents()[1]
  if not satellite then return end
  local launch_data = products[satellite.name]
  if not launch_data then return end

  local surface = silo.surface
  surface.create_entity {
    name = launch_data.resource,
    position = silo.position,
    amount = (launch_data.rand_min and math.random(launch_data.rand_min, launch_data.rand_max) or
      launch_data.rand_max and math.random(launch_data.rand_max) or 1) * (launch_data.base_mult or 1),
    force = "neutral"
  }

  silo.active = false

  local drill = surface.create_entity {
    name = drill_data.drill,
    position = silo.position,
    force = silo.force,
    raise_built = true
  }

  silo.fluidbox.add_linked_connection(1, drill, 1)
  silo.fluidbox.add_linked_connection(2, drill, 2)

  drill.update_connections()

  local base = silo.surface.find_entities_filtered {
    position = silo.position,
    limit = 1,
    name = drill_data.base
  }[1]

  if not base or not base.valid then return end

  silo.fluidbox.add_linked_connection(3, base, 1)
  silo.fluidbox.add_linked_connection(4, base, 2)
  silo.fluidbox.add_linked_connection(5, base, 3)
  silo.fluidbox.add_linked_connection(6, base, 4)
end)

py.on_event(py.events.on_built(), function (event)
  local entity = event.entity
  local drill_data = drills[entity.name:sub(1, -6)]
  if not drill_data then return end
  entity.send_to_orbit_automatically = true

  local resource = entity.surface.find_entities_filtered {
    position = entity.position,
    limit = 1,
    name = drill_data.resources
  }[1]
  if not resource or not resource.valid then return end
  -- must be the *exact* same position
  if resource.position.x ~= entity.position.x or resource.position.y ~= entity.position.y then return end
  -- borehole/resource already exists, manage as required
  entity.active = false

  local drill = entity.surface.create_entity {
    name = drill_data.drill,
    position = entity.position,
    force = entity.force,
    raise_built = true
  }

  entity.fluidbox.add_linked_connection(1, drill, 1)
  entity.fluidbox.add_linked_connection(2, drill, 2)

  drill.update_connections()

  local base = entity.surface.find_entities_filtered {
    position = entity.position,
    limit = 1,
    name = drill_data.base
  }[1]

  if not base or not base.valid then return end

  entity.fluidbox.add_linked_connection(3, base, 1)
  entity.fluidbox.add_linked_connection(4, base, 2)
  entity.fluidbox.add_linked_connection(5, base, 3)
  entity.fluidbox.add_linked_connection(6, base, 4)
end)

py.on_event(py.events.on_destroyed(), function (event)
  local entity = event.entity
  local drill_data = drills[entity.name:sub(1, -6)]
  if not drill_data then return end

  local drill = entity.surface.find_entities_filtered {
    position = entity.position,
    limit = 1,
    name = drill_data.drill
  }[1]
  if drill and drill.valid then drill.destroy() end

  local base = entity.surface.find_entities_filtered {
    position = entity.position,
    limit = 1,
    name = drill_data.base
  }[1]
  if base and base.valid then base.destroy() end
end)

-- reenable rocket silo
py.on_event(defines.events.on_resource_depleted, function(event)
  local resource = event.entity
  local drill = resouce_pointers[resource.name]
  if not drill then return end

  -- remove the drill
  resource.surface.find_entities_filtered {
    position = resource.position,
    limit = 1,
    name = drill
  }[1].destroy()

  -- reactivate the silo
  local silo = resource.surface.find_entities_filtered {
    position = resource.position,
    limit = 1,
    name = drills[drill].silo
  }[1]
  silo.active = true
end)