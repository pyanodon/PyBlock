--[[
--add fail safe raw coal to player and god character
for _, player in DATA:pairs('character') do
    player.crafting_categories = player.String_Array(player.crafting_categories or {}) + 'handcrafting-failsafe'
end
for _, controller in DATA:pairs('god-controller') do
    controller.crafting_categories = controller.String_Array(controller.crafting_categories or {}) + 'handcrafting-failsafe'
end
]]--


for r, resource in pairs(data.raw.resource) do
	--resource.autoplace = nil
	log(resource.name)
end

data.raw.resource['iron-ore'].autoplace = nil
--data.raw.resource['copper-ore'].autoplace = nil

require("prototypes/updates/pycoalprocessing-updates")
require("prototypes/updates/pypetroleumhandling-updates")
require('prototypes/updates/pyalienlife-updates')

--UNUSED
--require('prototypes/updates/ddc-coal-updates')
--require("prototypes/updates/pyfusionenergy-updates")
--require('prototypes/updates/pyhightech-updates')

--[[
--adjust landfill cost for landfill painter
if mods['LandfillPainting'] then
	local recipe_list = {
		'landfill-dry-dirt',
		'landfill-dirt-4',
		'landfill-grass-1',
		'landfill-red-desert-1',
		'landfill-sand-3',
		}
		for _, recipe in pairs(recipe_list) do
			RECIPE(recipe):remove_ingredient('stone'):add_ingredient({type = "item", name = 'stone', amount = 1}):add_ingredient({type = "item", name ='sand', amount = 2})
		end
end
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
