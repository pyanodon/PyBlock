local corpse = data.raw["character-corpse"]["character-corpse"]
local pictures = table.deepcopy(corpse.pictures)
for i, variation in pairs(pictures) do
  for ii, layer in pairs(variation.layers or {}) do
    if layer.apply_runtime_tint then
      layer.apply_runtime_tint = nil
      layer.tint = {
        r = 221,
        g = 127,
        b = 33
      }
    end
  end
end
data:extend {
  {
    type = "fish",
    name = "corpse-easter-egg",
    icon = "__core__/graphics/icons/entity/character.png",
    icon_size = 64,
    flags = {"placeable-neutral", "not-on-map"},
    hidden = true,
    minable = {mining_time = 2, result = "fish", count = 8},
    max_health = 20,
    subgroup = "creatures",
    order = "b-a",
    collision_box = table.deepcopy(corpse.collision_box),
    selection_box = table.deepcopy(corpse.selection_box),
    collision_mask = {layers = {ground_tile = true}, colliding_with_tiles_only = true},
    pictures = table.deepcopy(corpse.pictures),
    autoplace = {probability_expression = 0},
    protected_from_tile_building = true
  }
}