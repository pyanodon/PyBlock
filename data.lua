require("functions/functions")
require("prototypes/recipe-categories")
require("prototypes/technology")
require("prototypes/item")
require("prototypes/entity")
require("prototypes/recipes")
require("autoplace-controls")
require("prototypes/overrides/angel-recipe-overrides")
require("prototypes/overrides/angel-tech-overrides")

local tiles = 
	{
	"grass-1",
	"grass-2",
	"grass-3",
	"grass-4",
	"dry-dirt",
	"dirt-1",
	"dirt-2",
	"dirt-3",
	"dirt-4",
	"dirt-5",
	"dirt-6",
	"dirt-7",
	"sand-1",
	"sand-2",
	"sand-3",
	"red-desert-0",
	"red-desert-1",
	"red-desert-2",
	"red-desert-3",
	}

for t, tile in ipairs(tiles) do

	data.raw.tile[tile].autoplace = nil
	
end
