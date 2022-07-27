local octaves = -3
local persistence = 0.2
local waterline = 9.4
local elevation_scale = 5
local function scale_elevation(x)
  return (x - waterline) * elevation_scale + waterline
end
-- low lying sand
data.raw.tile['sand-1'].autoplace = {
  peaks = {
  { -- Around cliff islands
    influence = 5,
    elevation_optimal = 0.3 * elevation_scale + waterline,
    elevation_range = 0.3 * elevation_scale,
    elevation_max_range = 0.3 * elevation_scale
  },
  {
    influence = 0.77 * 8, -- Worm islands
    min_influence = 0,
    noise_layer = 'enemy-base',
    noise_octaves_difference = octaves,
    noise_persistence = persistence,
    tier_from_start_optimal = 8,
    tier_from_start_max_range = 40,
    tier_from_start_top_property_limit = 8
  },
  { -- Not in starting area
    influence = -5,
    starting_area_weight_optimal = 1,
    starting_area_weight_range = 0,
    starting_area_weight_max_range = 0
  },
  {
    influence = 100, -- ... except for starting tile
    min_influence = 0,
    distance_optimal = 0,
    distance_range = 0.1,
    distance_max_range = 0.1
  },
  {
    influence = -5
  }
}}


data.raw.tile['water'].autoplace = {
    peaks = {
    {
      influence = 0.1, -- shallow water around cliff islands
      min_influence = 0,
      elevation_optimal = -2 * elevation_scale + waterline,
      elevation_range = 2.5 * elevation_scale,
      elevation_max_range = 2.5 * elevation_scale
    },
    {
      influence = 0.77 * 2, -- around worm islands
      min_influence = 0,
      max_influence = 1,
      noise_layer = 'enemy-base',
      noise_octaves_difference = octaves,
      noise_persistence = persistence,
    },
    {
      influence = 5, -- around starting tile
      min_influence = 0,
      distance_optimal = 0,
      distance_range = 5,
      distance_max_range = 5
    }
  }}
  
  data.raw.tile['deepwater'].autoplace = {
    peaks = {
    {
      influence = 0.01
    }
  }}
  