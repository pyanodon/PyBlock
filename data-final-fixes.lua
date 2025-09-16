-- modify hardmode RHEs to only have one heat input
if mods["pyhardmode"] then
  data.raw["assembling-machine"].rhe.energy_source.connections = {{
    position = {-2, 0},
    direction = defines.direction.west
  }}
end

-- mark techs before wood processing as affected by tech multiplier
for _, technology in pairs{
  "wood-processing",
  "botany-mk01",
  "moss-mk01",
  "glass",
  "soil-washing",
  "mining-with-fluid",
  "steel-processing"
} do
  TECHNOLOGY(technology):set_fields{ignore_tech_cost_multiplier = false}
end

-- zerostart
require "prototypes.zerostart"