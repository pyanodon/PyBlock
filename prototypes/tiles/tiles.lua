for _, t in pairs(data.raw.tile) do
    t.autoplace = { probability_expression = "0" }
end

data.raw.planet.nauvis.map_gen_settings.autoplace_settings.tile.settings.landfill = {}

data.raw.tile["landfill"].autoplace = { probability_expression = "if(elevation > -2, 1, -inf)" }

data.raw.tile["water"].autoplace = { probability_expression = "water_base(3, 0.1)" }

data.raw.tile["deepwater"].autoplace = { probability_expression = "water_base(0, 0.01)" }