TECHNOLOGY {
  type = "technology",
  name = "atomizer-mk00",
  icon = "__PyBlock__/graphics/icons/atomizer-mk00.png",
  icon_size = 128,
  order = "c-a",
  prerequisites = {},
  effects = {},
  research_trigger = {
    type = "craft-item",
    item = "raw-coal",
    count = 50
  }
}


--tiles
-- require("prototypes/tiles/tiles")

--buildings--
require("prototypes/buildings/atomizer-mk00")
require("prototypes/buildings/ddc-mk00")
require("prototypes/buildings/washer-mk00")
require("prototypes/buildings/automated-screener-mk00")
require("prototypes/buildings/compost-plant-mk00")
require("prototypes/buildings/soil-extractor-mk00")
require("prototypes/buildings/solid-separator-mk00")
require("prototypes/buildings/wpu-mk00")
require("prototypes/buildings/geothermal-plant-mk01")
require("prototypes/buildings/cultivator")
require("prototypes/buildings/slaughterhouse-mk00")
require("prototypes/buildings/shunt-loader")
require("prototypes/buildings/shunt-inserter")

--UNUSED
--require("prototypes/buildings/fish-farm-mk00")
--require("prototypes/buildings/fwf-mk00")
--require("prototypes/buildings/seaweed-crop-mk00")
--require("prototypes/buildings/bqt")

require("prototypes/itemgroups")
require("prototypes/recipe-categories")
--require("prototypes/technology")
require("prototypes/item")
require("prototypes/fluids")
--require("prototypes/entity")

--Recipes
require("prototypes/recipes/recipes")
require("prototypes/recipes/recipes-kimberlite")
require("prototypes/recipes/recipes-uranium")

--formula to calulate steam consumption
--flowrate (in units/s) * heat capacity (J/unit/C) * (T - 15 C) = wattage

--x * 200 * (165 - 15) = 500,000

-- x = 500kw / ( 200 * (165 - 15))
--x = 16.67/s steam