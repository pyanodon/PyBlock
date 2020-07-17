local fun = require("functions/functions")

data:extend(
{
	{
    type = "pipe",
    name = "wrought-iron-pipe",
    icon = "__PyBlock__/graphics/pipe.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "wrought-iron-pipe"},
    max_health = 100,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        percent = 30
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    pictures = pipepictures(),
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.85
        }
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },

    horizontal_window_bounding_box = {{-0.25, -0.28125}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.5}, {0.03125, 0.125}}
  },
}
)

fun.ingredient_replace("burner-mining-drill","iron-plate","pb-wrought-iron-plate")
fun.ingredient_replace("burner-mining-drill","iron-gear-wheel","wrought-iron-gear-wheel")
fun.ingredient_replace("offshore-pump","pipe","wrought-iron-pipe")
fun.ingredient_replace("offshore-pump","iron-gear-wheel","wrought-iron-gear-wheel")
fun.ingredient_replace("burner-inserter","iron-plate","pb-wrought-iron-plate")
fun.ingredient_replace("burner-inserter","iron-gear-wheel","wrought-iron-gear-wheel")
fun.ingredient_replace("boiler","pipe","wrought-iron-pipe")

data.raw["container"]["big-ship-wreck-1"].inventory_size = 10
data.raw["container"]["big-ship-wreck-2"].inventory_size = 10
data.raw["container"]["big-ship-wreck-3"].inventory_size = 10

table.insert(data.raw["assembling-machine"]["botanical-nursery"].crafting_categories,"nursery")
local burner = {type = "void"}

data.raw["furnace"]["py-sinkhole"].energy_source = burner
data.raw["furnace"]["py-gas-vent"].energy_source = burner


--Add minablity to crashed ship parts
table.insert(data.raw["container"]["big-ship-wreck-1"],minable)
table.insert(data.raw["container"]["big-ship-wreck-2"],minable)
table.insert(data.raw["container"]["big-ship-wreck-3"],minable)
table.insert(data.raw["simple-entity"]["medium-ship-wreck"],minable)
table.insert(data.raw["simple-entity"]["small-ship-wreck"],minable)


local minableinfo =
		{
		mining_particle = "stone-particle",
		mining_time = 1,
    results =
      {
        {name = "scrap-iron", amount_min = 600, amount_max = 800},
        {name = "scrap-copper", amount_min = 150, amount_max = 300}
      },
		}

data.raw["container"]["big-ship-wreck-1"].minable = minableinfo

--log(serpent.block(data.raw["container"]["big-ship-wreck-1"]))

--table.insert(data.raw["container"]["big-ship-wreck-1"].minable,minableinfo)
data.raw["container"]["big-ship-wreck-2"].minable=minableinfo
data.raw["container"]["big-ship-wreck-3"].minable=minableinfo
data.raw["simple-entity"]["medium-ship-wreck"].minable=minableinfo
data.raw["simple-entity"]["small-ship-wreck"].minable=minableinfo
