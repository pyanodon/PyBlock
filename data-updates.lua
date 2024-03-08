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
local ores = {
	antimonium = true,
	borax = true,
	["copper-ore"] = true,
	["molybdenum-ore"] = true,
	niobium = true,
	["ore-aluminium"] = true,
	["ore-bioreserve"] = true,
	["ore-chromium"] = true,
	["ore-lead"] = true,
	["ore-nickel"] = true,
	["ore-tin"] = true,
	["ore-titanium"] = true,
	["ore-zinc"] = true,
	["phosphate-rock"] = true,
	ree = true,
	stone = true,
}
]]--

if settings.startup["pypp-dev-mode"].value == true and settings.startup["pypp-create-cache"].value == true then
	for r, resource in pairs(data.raw.resource) do
		resource.autoplace = nil
		--if ores[resource.name] ~= true then
			--resource.autoplace = nil
		--end
		--log(resource.name)
	end
end


require("prototypes/updates/pycoalprocessing-updates")
require("prototypes/updates/pypetroleumhandling-updates")
require("prototypes/updates/pyrawores-updates")
require('prototypes/updates/pyalienlife-updates')
require("prototypes/updates/pyalternativeenergy-updates")

--UNUSED
--require('prototypes/updates/ddc-coal-updates')
--require("prototypes/updates/pyfusionenergy-updates")
--require('prototypes/updates/pyhightech-updates')

--add driftwood for closer logs and saps
local noise = require("noise")

local driftwood = table.deepcopy(data.raw.tree["seaweed"])
driftwood.name = "driftwood"
driftwood.icon = "__PyBlock__/graphics/icons/driftwood.png"
driftwood.minable = {
mining_time = driftwood.minable.mining_time,
results =
    {
        {type = "item", name = "log", amount = 1},
        {type = "item", name = "saps", amount = 1, probability = 0.1}
    }
}
driftwood.pictures = {
    {
        filename = '__PyBlock__/graphics/icons/driftwood.png',
        priority = 'extra-high',
        blend_mode = 'additive',
        width = 64,
        height = 64,
        scale = 0.5
    }
}
driftwood.autoplace = {
    probabiltity_expression = noise.define_noise_function( function(x, y, tile, map)
        -- equiv to: limited_water < 0 and 0 or 1
        local limited_water = noise.clamp(noise.var("wlc_elevation_minimum"), 0, 1)
        -- 0.4% or 1.4%
        return 0.002 + (0.01 * limited_water)
    end),
    order = 'driftwood'
}
data:extend({driftwood})

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

data.raw.technology["excavation-1"].unit.ingredients = {{"automation-science-pack", 1},{"py-science-pack-1",1}}
data.raw.technology["excavation-1"].prerequisites = nil

--TECHNOLOGY("guar"):remove_pack("logistic-science-pack")

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

RECIPE("soot-separation"):set_fields{unlock_results = true}

--fake recipes to make ores from nothing to fake tech tree with pypp

RECIPE {
    type = "recipe",
    name = "fake-bioreserve-ore",
    category = "crafting",
    enabled = false,
    energy_required = 1,
    ingredients = {},
    results = {
        {type = "item", name = "native-flora", amount = 1}
    }
}

--[[
RECIPE {
    type = "recipe",
    name = "fake-kerogen-ore",
    category = "crafting",
    enabled = false,
    energy_required = 1,
    ingredients = {},
    results = {
        {type = "item", name = "kerogen", amount = 1}
    }
}
]]--

if register_cache_file ~= nil then
    register_cache_file({"pyblock"}, "__PyBlock__/cached-configs/pyblock.lua")
end
