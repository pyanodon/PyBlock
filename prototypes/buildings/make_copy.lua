return function (entity, new_name)
  new_entity = table.deepcopy(data.raw["assembling-machine"][entity])
  new_entity.name = new_name
  new_entity.localised_name = settings.startup["disable-pyblock-fun-names"].value and { "", "entity-name-alt." .. new_name, "entity-name." .. new_name } or nil
  for _, layers in pairs{
    new_entity.graphics_set.animation and new_entity.graphics_set.animation.layers or {},
    new_entity.graphics_set.working_visualisations or {},
  } do
    for _, sprite in pairs(layers or {}) do
      if sprite.tint then sprite.tint = {r = 0.5, g = 0.5, b = 0.5, a = 1.0} end
    end
  end
  new_entity.minable.result = new_name
  new_entity.crafting_speed = new_entity.crafting_speed * 0.5
  new_entity.next_upgrade = entity
  data.raw["assembling-machine"][new_name] = new_entity
  return ENTITY(new_name)
end