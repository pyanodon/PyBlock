-- mark techs before wood processing as affected by tech multiplier
for _, technology in pairs{
  "wood-processing",
  "botany-mk01",
  "moss-mk01",
  "glass",
  "mining-with-fluid",
  "steel-processing"
} do
  TECHNOLOGY(technology).ignore_tech_cost_multiplier = false
end

-- zerostart
require "prototypes.zerostart"