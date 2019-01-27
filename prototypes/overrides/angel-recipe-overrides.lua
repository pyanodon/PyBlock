--[[
TODO:

ore crushing and crushed ore smelting need inputs increased. try doubled

]]--


if mods["angelspetrochem"] then

data:extend(
{
	--[[
	{
	type = "recipe",
	name = "angels-ore4-smelting",
	category = "smelting",
	subgroup = "raw-material",
    enabled = "true",
	allow_decomposition = false,
	energy_required = 7,
	ingredients ={{"angels-ore4-crushed", 7}},
	results={{type="item", name="aluminium-plate", amount=1}},
    icon = "__angelsrefining__/graphics/icons/iron-plate-crushed.png",
	icon_size = 32,
    order = "a-a [angelsore1-crushed-smelting]",
	},
	]]--
	
	{
	type = "recipe",
	name = "tailings-angels1-angels3"
	},
	{
	type = "recipe",
	name = "tailings-angels6-angels4"
	},
	{
	type = "recipe",
	name = "tailings-angels2-angels5"
	}
}
)

--enabled needed recipes
data.raw.recipe["angelsore5-crushed-smelting"].normal.ingredients[1][2] = 6
data.raw.recipe["angelsore5-crushed-smelting"].results[1].name = "aluminium-plate"
data.raw.recipe["angelsore5-crushed"].enabled = true

log(serpent.block(data.raw.recipe["angelsore5-crushed-smelting"]))
--modify angels crushing recipes

--increased inputs
data.raw.recipe["angelsore1-crushed"].ingredients[1][2] = 6
data.raw.recipe["angelsore2-crushed"].ingredients[1][2] = 6
data.raw.recipe["angelsore3-crushed"].ingredients[1][2] = 6
data.raw.recipe["angelsore4-crushed"].ingredients[1][2] = 6
data.raw.recipe["angelsore5-crushed"].ingredients[1][2] = 6
data.raw.recipe["angelsore6-crushed"].ingredients[1][2] = 6

--modify angels plate smelting recipes

--increase inputs
data.raw.recipe["angelsore1-crushed-smelting"].normal.ingredients[1][2] = 7
data.raw.recipe["angelsore3-crushed-smelting"].normal.ingredients[1][2] = 7
data.raw.recipe["angelsore5-crushed-smelting"].normal.ingredients[1][2] = 7
data.raw.recipe["angelsore6-crushed-smelting"].normal.ingredients[1][2] = 7


--angels ore tailing recipes

local Recipe = data.raw.recipe

local tailingsrecipe = table.deepcopy(data.raw.recipe["tailings-copper-iron"])
tailingsrecipe.name = nil

Recipe["tailings-angels1-angels3"] = tailingsrecipe
Recipe["tailings-angels1-angels3"].name = "tailings-angels1-angels3"
Recipe["tailings-angels1-angels3"].results[4].name = "angels-ore3"
Recipe["tailings-angels1-angels3"].results[5].name = "angels-ore1"
Recipe["tailings-angels1-angels3"].localised_name = "Stiratite and Saphirite from Tar"

local tailingsrecipe = table.deepcopy(data.raw.recipe["tailings-copper-iron"])
tailingsrecipe.name = nil

Recipe["tailings-angels6-angels4"] = tailingsrecipe
Recipe["tailings-angels6-angels4"].name = "tailings-angels6-angels4"
Recipe["tailings-angels6-angels4"].results[4].name = "angels-ore6"
Recipe["tailings-angels6-angels4"].results[5].name = "angels-ore4"
Recipe["tailings-angels6-angels4"].localised_name = "Crotinnium and Bobmonium from Tar"

local tailingsrecipe = table.deepcopy(data.raw.recipe["tailings-copper-iron"])
tailingsrecipe.name = nil

Recipe["tailings-angels2-angels5"] = tailingsrecipe
Recipe["tailings-angels2-angels5"].name = "tailings-angels2-angels5"
Recipe["tailings-angels2-angels5"].results[4].name = "angels-ore2"
Recipe["tailings-angels2-angels5"].results[5].name = "angels-ore5"
Recipe["tailings-angels2-angels5"].localised_name = "Jivolite and Rubyte from Tar"


--log(serpent.block(Recipe["tailings-angels6-angels4"]))
--log(serpent.block(data.raw.recipe["tailings-angels1-angels2"]))



end