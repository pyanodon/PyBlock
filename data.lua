require("functions/functions")
require("prototypes/recipe-categories")
require("prototypes/technology")
require("prototypes/item")
require("prototypes/entity")
require("prototypes/recipes")
--require("autoplace-controls")
require("prototypes/overrides/angel-recipe-overrides")
require("prototypes/overrides/angel-tech-overrides")

local recipeselect=
	{
	type = "custom-input",
	name = "recipe-selector",
	key_sequence = "SHIFT + R",
	consuming = "none"
	}
	
data:extend{recipeselect}