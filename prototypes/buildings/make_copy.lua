return function (base_name)
  new_entity = table.deepcopy(data.raw["assembling-machine"][base_name .. "-mk01"] or data.raw.furnace[base_name .. "-mk01"])
  new_entity.name = base_name .. "-mk00"
  new_entity.localised_name = settings.startup["disable-pyblock-fun-names"].value and {"entity-name-alt." .. base_name .. "-mk00"} or {"entity-name." .. base_name .. "-mk00"}
  new_entity.localised_description = {"?", {"entity-description." .. base_name .. "-mk00"}, {"entity-description." .. base_name}}
  for _, layers in pairs{
    new_entity.graphics_set.animation and new_entity.graphics_set.animation.layers or {},
    new_entity.graphics_set.working_visualisations or {},
  } do
    for _, sprite in pairs(layers or {}) do
      if sprite.tint then sprite.tint = {r = 0.5, g = 0.5, b = 0.5, a = 1.0} end
    end
  end
  new_entity.icon = "__PyBlock__/graphics/icons/" .. base_name .. "-mk00.png"
  new_entity.minable = {result = base_name .. "-mk00", mining_time = 0.5}
  new_entity.crafting_speed = new_entity.crafting_speed * 0.5
  new_entity.fast_replaceable_group = base_name
  new_entity.module_slots = ENTITY(base_name .. "-mk01").module_slots ~= 1 and ENTITY(base_name .. "-mk01").module_slots or 0
  new_entity.next_upgrade = base_name .. "-mk01"
  data.raw[new_entity.type][base_name .. "-mk00"] = new_entity
  return ENTITY(base_name .. "-mk00")
end