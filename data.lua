require("functions/functions")
require("prototypes/recipe-categories")
require("prototypes/technology")
require("prototypes/item")
require("prototypes/entity")
require("prototypes/recipes")
--require("autoplace-controls")
require("prototypes/overrides/angel-recipe-overrides")
require("prototypes/overrides/angel-tech-overrides")

local tiles = 
	{
	--"out-of-map",
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
	--[[
	for a, a in pairs(data.raw.tile) do
	
		log(a.name)
		
	end
]]
	--data.raw.tile["landfill"].collision_mask = {}
	--data.raw.tile["out-of-map"].collision_mask = {}
	
for t, tile in ipairs(tiles) do

--log(serpent.block(data.raw.tile[tile].autoplace))

	data.raw.tile[tile].autoplace = nil
	--data.raw.tile[tile] = nil
	--data.raw["optimized-decorative"]["sand-dune-decal"] = nil
	--data.raw.tile[tile].autoplace = autoplace_settings(tile,"grass",{{0,0},{0,0}})
	
end

--[[
for a, a in pairs(data.raw.tile) do
	
	log(a.name)
		
end
]]

local recipeselect=
	{
	type = "custom-input",
	name = "recipe-selector",
	key_sequence = "SHIFT + R",
	consuming = "none"
	}
	
data:extend{recipeselect}