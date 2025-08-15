return function (base_name)
  local entity_name = base_name .. "-mk01"
  local new_entity = table.deepcopy(data.raw["assembling-machine"][entity_name] or data.raw.furnace[entity_name])
  new_entity.name = base_name .. "-mk00"
  ENTITY(new_entity):set_fields{
    icon = "__PyBlock__/graphics/icons/" .. base_name .. "-mk00.png",
    minable = {
      result = base_name .. "-mk00",
      mining_time = ENTITY(entity_name).minable.mining_time
    },
    localised_name = {"?", settings.startup["disable-pyblock-fun-names"].value and {"entity-name-alt." .. base_name .. "-mk00"} or {"entity-name." .. base_name .. "-mk00"}, {"item-tier.mk00", {"entity-name." .. base_name}}},
    localised_description = {"?", {"entity-description." .. base_name .. "-mk00"}, {"entity-description." .. base_name}},
    crafting_speed = ENTITY(entity_name).crafting_speed * 0.5,
    fast_replaceable_group = base_name,
    module_slots = 0,
    next_upgrade = base_name .. "-mk01",
  }
  for _, layers in pairs{
    ENTITY(base_name .. "-mk00").graphics_set.animation and new_entity.graphics_set.animation.layers or {},
    ENTITY(base_name .. "-mk00").graphics_set.working_visualisations or {},
  } do
    for _, sprite in pairs(layers or {}) do
      if sprite.tint then sprite.tint = {r = 0.5, g = 0.5, b = 0.5, a = 1.0} end
    end
  end
  return ENTITY(base_name .. "-mk00")
end
