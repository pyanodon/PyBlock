if mods["angelspetrochem"] then

local tailingsrecipe = table.deepcopy(data.raw.recipe["tailings-copper-iron"])

data:extend(
{
	{
	type = "recipe",
	name = "tailings-angels1-angels2"
	}
}
)

local Recipe = data.raw.recipe

Recipe["tailings-angels1-angels2"] = tailingsrecipe
Recipe["tailings-angels1-angels2"].name = "tailings-angels1-angels2"
Recipe["tailings-angels1-angels2"].results[4].name = "angels-ore3"
Recipe["tailings-angels1-angels2"].results[5].name = "angels-ore1"


log(serpent.block(data.raw.recipe["tailings-angels1-angels2"]))



end