
for _, t in pairs(data.raw.tile) do
    t.autoplace = nil
end

--tiles
require('prototypes/tiles/tiles')

--buildings--
require('prototypes/buildings/atomizer-mk00')
require('prototypes/buildings/basic-ddc')
require('prototypes/buildings/burner-washer')
require('prototypes/buildings/automated-screener-mk00')
require("prototypes/buildings/geothermal-plant-mk01")
require("prototypes/buildings/cultivator-mk01")

--UNUSED
--require('prototypes/buildings/burner-wpu')
--require('prototypes/buildings/compost-plant-mk00')
--require('prototypes/buildings/fish-farm-mk00')
--require('prototypes/buildings/fwf-mk00')
--require('prototypes/buildings/slaughterhouse-mk00')
--require('prototypes/buildings/seaweed-crop-mk00')
--require('prototypes/buildings/bqt')
--require('prototypes/buildings/burner-soil-extractor')

require("prototypes/itemgroups")
require("prototypes/recipe-categories")
--require("prototypes/technology")
--require("prototypes/item")
--require("prototypes/fluids")
--require("prototypes/entity")

--Recipes
require("prototypes/recipes/recipes")
--require("prototypes/recipes/recipes-uranium")

--formula to calulate steam consumption
--flowrate (in units/s) * heat capacity (J/unit/C) * (T - 15 C) = wattage

--x * 200 * (165 - 15) = 500,000

-- x = 500kw / ( 200 * (165 - 15))
--x = 16.67/s steam


TECHNOLOGY {
    type = "technology",
    name = "auog-mk00",
    icon = "__pyalienlifegraphics__/graphics/technology/auog.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 50
    }
}
