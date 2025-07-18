return function (entity, new_name)
  new_entity = table.deepcopy(data.raw["assembling-machine"][entity])
  new_entity.name = new_name
  new_entity.localised_name = nil
  for _, sprite in pairs(new_entity.animation.layers) do
    if sprite.tint then sprite.tint = {r = 0.5, g = 0.5, b = 0.5, a = 1.0} end
  end
  new_entity.mineable.result = new_name
  new_entity.crafting_speed = new_entity.crafting_speed * 0.5
  data.raw["assembling-machine"][new_name] = new_entity
  return ENTITY(new_name)
end