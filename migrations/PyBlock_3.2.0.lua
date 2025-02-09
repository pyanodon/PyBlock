local surfaces = game.surfaces

for _, surface in pairs(game.surfaces) do
  local landfill = surface.find_tiles_filtered{
    name = "landfill",
    has_hidden_tile = false
  }
  -- set water as hidden tile
  for _, tile in pairs(landfill) do
    surface.set_hidden_tile(tile.position, "water")
  end

  -- get normal non-water tiles
  local tiles = surface.find_tiles_filtered{
    collision_mask = "water_tile",
    name = "landfill",
    invert = true
  }
  local to_replace = {}
  for _, tile in pairs(tiles) do
    to_replace[#to_replace+1] = {
      position = tile.position,
      name = "landfill"
    }
  end

  -- replace with landfill
  surface.set_tiles(
    to_replace
  )

  -- set water as hidden tile
  for _, tile in pairs(to_replace) do
    surface.set_hidden_tile(tile.position, "water")
  end
end