
--buildings--
require('prototypes/buildings/fish-farm-mk00')
require('prototypes/buildings/atomizer-mk00')
require('prototypes/buildings/slaughterhouse-mk00')
require('prototypes/buildings/automated-screener-mk00')
require('prototypes/buildings/seaweed-crop-mk00')

--fix the goddamn ore numbers
require("functions/functions")
require("prototypes/recipe-categories")
require("prototypes/technology")
require("prototypes/item")
require("prototypes/fluids")
require("prototypes/entity")
require("prototypes/recipes")
--require("autoplace-controls")
--require("prototypes/overrides/angel-recipe-overrides")
--require("prototypes/overrides/angel-tech-overrides")

local recipeselect=
	{
	type = "custom-input",
	name = "recipe-selector",
	key_sequence = "SHIFT + R",
	consuming = "none"
	}
	
data:extend{recipeselect}
