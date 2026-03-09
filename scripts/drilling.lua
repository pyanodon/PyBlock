-- simulate both smart farms and pYPP drilling in the same entity

---@param event EventData.on_rocket_launched
py.on_event(defines.events.on_rocket_launched, function(event)
  local silo = event.rocket_silo --[[@as LuaEntity]]
  if not silo or not silo.valid then return end -- silo died after launch started
  if silo.name ~= "geothermal-plant-mk01-silo" then return end

  local satellite = event.rocket.cargo_pod.get_inventory(defines.inventory.cargo_unit).get_contents()[1]
  if not satellite then return end

  local surface = silo.surface
  surface.create_entity {
    name = "geothermal-crack-borehole",
    position = silo.position,
    amount = 10,
    -- amount = 5 * math.random(40),
    force = "neutral"
  }

  silo.active = false
  -- silo.set_recipe()

  local drill = surface.create_entity {
    name = "geothermal-plant-mk01",
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
    name = "geothermal-plant-mk01-base"
  }[1]

  if not base or not base.valid then return end

  silo.fluidbox.add_linked_connection(3, base, 1)
  silo.fluidbox.add_linked_connection(4, base, 2)
  silo.fluidbox.add_linked_connection(5, base, 3)
  silo.fluidbox.add_linked_connection(6, base, 4)
end)

py.on_event(py.events.on_built(), function (event)
  local entity = event.entity
  if entity.name ~= "geothermal-plant-mk01-silo" or not entity.valid then return end
  entity.send_to_orbit_automatically = true

  local resource = entity.surface.find_entities_filtered {
    position = entity.position,
    limit = 1,
    name = {"geothermal-crack", "geothermal-crack-borehole"}
  }[1]
  if not resource or not resource.valid then return end
  -- must be the *exact* same position
  if resource.position.x ~= entity.position.x or resource.position.y ~= entity.position.y then return end
  -- borehole/resource already exists, manage as required
  entity.active = false

  local drill = entity.surface.create_entity {
    name = "geothermal-plant-mk01",
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
    name = "geothermal-plant-mk01-base"
  }[1]

  if not base or not base.valid then return end

  entity.fluidbox.add_linked_connection(3, base, 1)
  entity.fluidbox.add_linked_connection(4, base, 2)
  entity.fluidbox.add_linked_connection(5, base, 3)
  entity.fluidbox.add_linked_connection(6, base, 4)
end)

py.on_event(py.events.on_destroyed(), function (event)
  local entity = event.entity
  if entity.name ~= "geothermal-plant-mk01-silo" then return end

  local drill = entity.surface.find_entities_filtered {
    position = entity.position,
    limit = 1,
    name = "geothermal-plant-mk01"
  }[1]
  if drill and drill.valid then drill.destroy() end

  local base = entity.surface.find_entities_filtered {
    position = entity.position,
    limit = 1,
    name = "geothermal-plant-mk01-base"
  }[1]
  if base and base.valid then base.destroy() end

  -- local resource = entity.surface.find_entities_filtered {
  --   position = entity.position,
  --   limit = 1,
  --   name = {"geothermal-crack", "geothermal-crack-borehole"}
  -- }[1]
  -- if resource and resource.valid then resource.destroy() end
end)

script.on_load(function()
  remote.call("py-drilling", "add-resource-patch", "geothermal-crack-borehole")
  remote.call("py-drilling", "add-mining-drill", "geothermal-plant-mk01", {
    base = "geothermal-plant-mk01-base",
    resource = "geothermal-crack",
    fluid = "geothermal-water",
    rand_min = 1,
    rand_max = 4,
    base_mult = 1,
    drill_tier_mult = 1,
    fluid_tier_mult = 1,
    alert = "bitumen-seep-alert"
  })
end)

-- reenable rocket silo
py.on_event(defines.events.on_resource_depleted, function(event)
  local resource = event.entity
  if resource.name ~= "geothermal-crack" then return end

  -- remove the drill
  resource.surface.find_entities_filtered {
    position = resource.position,
    limit = 1,
    name = "geothermal-plant-mk01"
  }[1].destroy()

  -- reactivate the silo
  local silo = resource.surface.find_entities_filtered {
    position = resource.position,
    limit = 1,
    name = "geothermal-plant-mk01-silo"
  }[1]
  silo.active = true
  -- silo.set_recipe("geothermal-drilling")
end)