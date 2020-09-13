local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

local Allrecipes = table.deepcopy(data.raw.recipe)

for r, Recipe in pairs(Allrecipes) do

if Recipe.subgroup == "py-void-liquid" then

	--log(Recipe.name)
	
end

end

local recipes_list =
	{
		"sodium-acetate",
		"ethane",
		"dichloroethane",
		"fecl2",
		"fecl3",
		"ethylenediamine",
		"nylon-rope",
		"nylon-rope-coated",
		"nylon-rope-uranyl-soaked",
		"uranyl-nitrate",
	}

--adding to module limitation list
FUN.productivity(recipes_list)