local FUN = require("__pycoalprocessing__/prototypes/functions/functions")
--[[
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
]]--

data.raw.technology["excavation-1"].unit.ingredients = {{"automation-science-pack", 1},{"py-science-pack-1",1}}
data.raw.technology["excavation-1"].prerequisites = nil

TECHNOLOGY("guar"):remove_pack("logistic-science-pack")

RECIPE("mining-antimony"):remove_unlock("excavation-2"):add_unlock("excavation-1")

RECIPE("ground-borer"):remove_ingredient("intermetallics")

RECIPE("guar-gum-plantation"):remove_ingredient("intermetallics")

RECIPE("mining-borax"):replace_ingredient("drilling-fluid-1", "lubricant")

data.raw.technology["mega-farm"].unit.ingredients = {{"automation-science-pack", 1},{"py-science-pack-1",1}}
TECHNOLOGY("mega-farm"):set_fields{prerequisites = {}}

RECIPE("mega-farm"):set_fields{ingredients = {}}:add_ingredient({"concrete", 200}):add_ingredient({"treated-wood", 50})

RECIPE("replicator-bioreserve"):set_fields{ingredients = {}}

data.raw.technology["mega-farm-bioreserve"].unit.ingredients = {{"automation-science-pack", 1},{"py-science-pack-1",1}}

RECIPE("arqad-hive-mk01"):remove_ingredient("intermetallics")

TECHNOLOGY("arqad"):remove_pack("logistic-science-pack")

table.insert(RECIPE("soot-separation").results, {type = "item", name = "ore-nickel", amount = 1, probability = 0.1})