local waterline = 40
local elevation_scale = 5

for _, t in pairs(data.raw.tile) do
    t.autoplace = nil
end

-- low lying sand
data.raw.tile['landfill'].autoplace = {
  peaks = {
  { -- Around cliff islands
    influence = 5,
    elevation_optimal = 0.3 * elevation_scale + waterline,
    elevation_range = 0.3 * elevation_scale,
    elevation_max_range = 0.3 * elevation_scale + 100
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
    }
  }}
  
  data.raw.tile['deepwater'].autoplace = {
    peaks = {
    {
      influence = 0.01
    }
  }}