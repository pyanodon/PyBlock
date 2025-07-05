-- modify hardmode RHEs to only have one heat input
if mods["pyhardmode"] then
  data.raw["assembling-machine"].rhe.energy_source.connections = {{
    position = {-2, 0},
    direction = defines.direction.west
  }}
end

-- zerostart
require "prototypes.zerostart"