--[[
--add fail safe raw coal to player and god character
for _, player in DATA:pairs('character') do
    player.crafting_categories = player.String_Array(player.crafting_categories or {}) + 'handcrafting-failsafe'
end
for _, controller in DATA:pairs('god-controller') do
    controller.crafting_categories = controller.String_Array(controller.crafting_categories or {}) + 'handcrafting-failsafe'
end
]]--

--[[
for r, resource in pairs(data.raw.resource) do
	resource.autoplace = nil
end
]]--
require("prototypes/updates/pycoalprocessing-updates")
require("prototypes/updates/pyfusionenergy-updates")
require("prototypes/updates/pypetroleumhandling-updates")
--require('prototypes/updates/pyhightech-updates')
require('prototypes/updates/pyalienlife-updates')
--require('prototypes/updates/ddc-coal-updates')

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
