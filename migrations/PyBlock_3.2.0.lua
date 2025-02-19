local surfaces = game.surfaces

for _, surface in pairs(game.surfaces) do
  -- get non-landfill non-water tiles that do have a hidden tile but not double hidden (i.e. stone bricks on landfill not on water)
  local double_tiles = surface.find_tiles_filtered{
    collision_mask = "water_tile",
    name = "landfill",
    has_hidden_tile = false,
    has_double_hidden_tile = true,
    invert = true
  }

  -- set water as the double hidden tile for those tiles
  for _, tile in pairs(double_tiles) do
    surface.set_double_hidden_tile(tile.position, "water")
  end

  -- find landfill tiles that do not have a hidden tile (i.e. landfill as the base tile, not minable)
  local landfill = surface.find_tiles_filtered{
    name = "landfill",
    has_hidden_tile = false
  }

  -- set water as hidden tile
  for _, tile in pairs(landfill) do
    surface.set_hidden_tile(tile.position, "water")
  end

  -- get non-landfill non-water tiles that do not have a hidden tile and not double hidden (i.e. mapgen placed dirt or sand)
  local tiles = surface.find_tiles_filtered{
    collision_mask = "water_tile",
    name = "landfill",
    has_hidden_tile = true,
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

  -- set water as hidden tile (order required because reasons)
  for _, tile in pairs(to_replace) do
    surface.set_hidden_tile(tile.position, "water")
  end
end
