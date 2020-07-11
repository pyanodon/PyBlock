local fun = require("functions/functions")

--tailings recipes

data.raw.item["landfill"].stack_size = 1000

data.raw.recipe["landfill"].ingredients={{type="item", name="stone", amount=5}}

data.raw.recipe["tailings-copper-iron"].ingredients[1].amount=50

data.raw.recipe["tailings-borax-niobium"].ingredients[1].amount=50

for k, result in ipairs(data.raw.recipe["tailings-copper-iron"].results) do

	--log(data.raw.recipe["tailings-copper-iron"].results[k].name)

	if data.raw.recipe["tailings-copper-iron"].results[k].name == "copper-ore" then
	
		data.raw.recipe["tailings-copper-iron"].results[k].amount = 7.5
		data.raw.recipe["tailings-copper-iron"].results[k].probability = .75
		
	end
	
	if data.raw.recipe["tailings-copper-iron"].results[k].name == "iron-ore" then
	
		data.raw.recipe["tailings-copper-iron"].results[k].amount = 10
		data.raw.recipe["tailings-copper-iron"].results[k].probability = 1
		
	end
	
end

for k, result in ipairs(data.raw.recipe["tailings-borax-niobium"].results) do

	--log(data.raw.recipe["tailings-copper-iron"].results[k].name)

	if data.raw.recipe["tailings-borax-niobium"].results[k].name == "niobium-ore" then
	
		data.raw.recipe["tailings-borax-niobium"].results[k].amount = 10
		data.raw.recipe["tailings-borax-niobium"].results[k].probability = 1
		
	end
	
	if data.raw.recipe["tailings-borax-niobium"].results[k].name == "raw-borax" then
	
		data.raw.recipe["tailings-borax-niobium"].results[k].amount = 10
		data.raw.recipe["tailings-borax-niobium"].results[k].probability = 1
		
	end
	
end

data:extend(
{
	{
	type = "recipe",
	name = "tailings-lead-chromium"
	},
	{
	type = "recipe",
    name = "tailings-tin-alum",
    localised_name = {"recipe-name.tailings-ore-extraction", {"item-name.ore-tin"}, {"item-name.ore-aluminium"}, {"fluid-name.tar"}},
    category = "quenching-tower",
    enabled = true,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "tar", amount = 200},
        {type = "fluid", name = "dirty-water", amount = 500}
    },
    results = {
        {type = "fluid", name = "dirty-water", amount = 100},
        {type = "fluid", name = "flue-gas", amount = 300},
        {type = "fluid", name = "water-saline", amount = 200},
		{type = "item", name = "ore-tin", amount = 10},
		{type = "item", name = "ore-aluminium", amount = 10}
    },
    icons = {
        {icon = "__pycoalprocessinggraphics__/graphics/icons/dirty-water.png", icon_size = 32}
    },
    icon_size = 32,
    subgroup = "py-quenching-ores",
    order = "tailings-a"
	}
	
}
)

local Recipe = data.raw.recipe

local tailingsrecipe = table.deepcopy(data.raw.recipe["tailings-copper-iron"])
tailingsrecipe.name = nil

Recipe["tailings-lead-chromium"] = tailingsrecipe
Recipe["tailings-lead-chromium"].name = "tailings-lead-chromium"
Recipe["tailings-lead-chromium"].results[4].name = "ore-lead"
Recipe["tailings-lead-chromium"].results[5].name = "ore-chromium"
Recipe["tailings-lead-chromium"].localised_name = "Lead and Chromium from Tar"

data.raw.recipe["quenching-tower"].ingredients[4] = nil

--adjust void entities

data.raw["furnace"]["py-sinkhole"].crafting_speed = 10
data.raw["furnace"]["py-gas-vent"].crafting_speed = 10

--new recipes
data:extend
(
{
	{
	type = "recipe",
	name = "soil-to-stone",
	category = "washer",
    enabled = true,
    energy_required = 4,
	ingredients =
		{
			{type = "item", name = "soil", amount = 24},
			{type = "fluid", name = "water", amount = 400}
		},
	results = 
		{
			{type = "item", name = "stone", amount = 10},
			{type = "fluid", name = "dirty-water", amount = 50}
		},
	main_product = "stone",
	icon = "__pycoalprocessinggraphics__/graphics/icons/soil-washer.png",
    icon_size = 32,
    subgroup = "py-washer",
    order = "c"
	},
	{
	type = "recipe",
	name = "coaldust-to-diamond",
	category = "hpf",
	enabled = false,
	energy_required = 10,
	ingredients = 
		{
			{
			type = "item", name = "coal-dust", amount = 20
			}
		},
	results = 
		{
			{
			type = "item", name = "kimberlite-rock", amount = 1
			}
		},
	icon = "__pyfusionenergygraphics__/graphics/icons/ores/kimberlite-rock.png",
	icon_size = 32,
	subgroup = "py-fusion-recipes",
    order = "h"
	},
	
	{
	type = "recipe",
	name = "sand-quartz-sifting",
	category = "screener",
	enabled = true,
	ingredients =
		{
			{type = "item", name = "sand", amount = 10}
		},
	results = 
		{
			{type = "item", name = "ore-quartz", amount = 2}
		},
	main_product = "ore-quartz",
	icon = "__pyraworesgraphics__/graphics/icons/ores/ore-quartz.png",
	icon_size = 32,
	subgroup = "py-washer",
	order = "c",
	energy_required = 4
	},
	--tit ore from rich dust in classifer
	{
	type = "recipe",
	name = "titanium-from-rich-dust",
	category = "classifier",
	enabled = false,
	ingredients =
		{
			{type = "item", name = "rich-dust", amount = 10}
		},
	results =
		{
			{type = "item", name = "ore-titanium", amount = 2}
		},
	main_product = "ore-titanium",
	icon = "__pyraworesgraphics__/graphics/icons/ores/ore-titanium.png",
	icon_size = 32,
	subgroup = "py-items-class",
	order = "b"
	},
	{
	type = "recipe",
	name = "wrought-iron",
	category = "smelting",
	enabled = true,
	ingredients = 
		{
			{type = "item", name = "iron-ore", amount = 2}
		},
	results = 
		{
			{type = "item", name = "pb-wrought-iron-plate", amount = 1}
		},
	main_product = "pb-wrought-iron-plate",
	icon = "__base__/graphics/icons/iron-plate.png",
	icon_size = 32,
	energy_required = 3,
	--order = "a[smelting]",
	},
	{
	type = "recipe",
	name = "scrap-to-wrought-iron",
	category = "smelting",
	energy_required = 2,
	ingredients = 
		{
			{"scrap-iron", 10}
		},
	result = "pb-wrought-iron-plate"
	},
	{
	type = "recipe",
	name = "scrap-to-copper",
	category = "smelting",
	energy_required = 2,
	ingredients = 
		{
			{name = "scrap-copper", amount = 5}
		},
	results = {
		{name = "copper-plate", amount = 1}
	}
	},
	--[[
	{
	type = "recipe",
	name = "liquid-alloy-to-nichrome",
	category = "casting",
	enabled = false,
	energy_required = 5,
	ingredients = 
		{
			{type = "fluid", name = "molten-nickel", amount = 50},
			{type = "fluid", name = "molten-chromium", amount = 40},
			{type = "item", name = "sand-casting", amount = 1}
		},
	results = 
		{
			{type = "item", name = "nichrome", amount = 2}
		},
	main_product = "nichrome",
	subgroup = "py-rawores-plates",
	order = "j2"
	},
	]]--
	--nickel from clay
	
	{
	type = "recipe",
	name = "nickel-alum-from-clay",
	category = "hpf",
	enabled = true,
	energy_required = 6,
	ingredients = 
		{
			{type = "item", name = "clay", amount = 6},
			{type = "fluid", name = "sulfuric-acid", amount = 20}
		},
	results = 
		{
			{type = "item", name = "ore-nickel", amount = 2},
			{type = "item", name = "ore-aluminium", amount = 1, probability = 0.2}
		},
	main_product = "ore-nickel",
	subgroup = "py-quenching-ores",
	order = "tailings-e"
	},
	--new building recipes:
	{
    type = "recipe",
    name = "cheap-iron-mine",
    energy_required = 10,
    enabled = true,
    ingredients = {
        {"automated-factory-mk01", 1},
        {"burner-mining-drill", 2},
		{"wrought-iron-gear-wheel", 25},
		{"wrought-iron-pipe", 10},
        {"pb-wrought-iron-plate", 50},
        {"electronic-circuit", 20}
    },
    results = {
        {"cheap-iron-mine", 1}
    }
	},
	{
	type = "recipe",
	name = "basic-ddc",
	energy_required = 8,
	enabled = true,
	ingredients = {
			{name = "pb-wrought-iron-plate", amount = 15},
			{name = "stone-furnace", amount = 1},
			{name = "wrought-iron-pipe", amount = 5}
	},
	results = {
		{name = "basic-ddc", amount = 1}
	}
	},
	--[[
	{
		type = "recipe",
		name = "starter-botanical-nursery",
		energy_required = 15,
		enabled = true,
		ingredients =
			{
				{"burner-soil-extractor", 1},
				{"pb-wrought-iron-plate", 15},
				{"wood", 5},
				{"wrought-iron-pipe", 10}
			},
		results =
			{
				{"starter-botanical-nursery", 1}
			}
	},
	]]--
	{
    type = "recipe",
    name = "burner-soil-extractor",
    energy_required = 6,
    enabled = true,
    ingredients = {
        {"burner-mining-drill", 2},
        {"pb-wrought-iron-plate", 15},
        {"copper-cable", 5},
        {"wrought-iron-gear-wheel", 15}
    },
    results = {
        {"burner-soil-extractor", 1}
    }
	},
	{
    type = "recipe",
    name = "burner-quenching-tower",
    energy_required = 5,
    enabled = true,
    ingredients = {
        {"landfill", 25},
        {"pb-wrought-iron-plate", 25},
        {"wrought-iron-pipe", 10},
        {"copper-plate", 15}
    },
    results = {
        {"burner-quenching-tower", 1}
    }
	},
	{
    type = "recipe",
    name = "burner-washer",
    energy_required = 4,
    enabled = true,
    ingredients = {
        {"pb-wrought-iron-plate", 10},
        {"wrought-iron-pipe", 25},
        {"stone-brick", 30}
    },
    results = {
        {"burner-washer", 1}
    }
	},
	{
    type = "recipe",
    name = "burner-wpu",
    energy_required = 5,
    enabled = true,
    ingredients = {
        --{"wood", 20},
        {"pb-wrought-iron-plate", 20},
        {"wrought-iron-gear-wheel", 15},
        {"burner-mining-drill", 2},
        {"copper-cable", 50}
    },
    results = {
        {"burner-wpu", 1}
    }
	},
	
	--new item recipes:
	{
	type = "recipe",
	name = "wrought-iron-pipe",
	energy_required = 1,
	enabled = true,
	ingredients = 
		{
			{"pb-wrought-iron-plate", 1}
		},
	results = 
		{
			{"wrought-iron-pipe", 1}
		},
	main_product = "wrought-iron-pipe"
	},
	{
    type = "recipe",
    name = "wrought-iron-gear-wheel",
    ingredients = {{"pb-wrought-iron-plate", 2}},
    result = "wrought-iron-gear-wheel"
	},
	
	--Wrought iron to regulear
	{
	type = "recipe",
	name = "wrought-to-iron",
	category = "smelting",
	ingredients = 
		{
			{"pb-wrought-iron-plate", 5}
		},
	result = "iron-plate"
	},
	{
	type = "recipe",
	name = "iron-to-wrought",
	ingredients =
		{
			{"iron-plate", 1}
		},
	result = "pb-wrought-iron-plate",
	main_product = "pb-wrought-iron-plate",
	result_count = 5
	},
	--new fluids for ree from ash
	{
	type = "recipe",
	name = "propene-to-butanol",
	ingredients =
		{
			{type = "fluid", name = "propene", amount = 50},
			{type = "fluid", name = "hydrogen", amount = 50},
			{type = "fluid", name = "carbon-dioxide", amount = 25}
		},
	results =
		{
			{type = "fluid", name = "butanol", amount = 50}
		},
	main_product = "butanol",
	category = "electrolyzer"
	},
	{
	type = "recipe",
	name = "phosphorus-tricloride",
	ingredients =
		{
			{type = "item", name = "powdered-phosphate-rock", amount = 10},
			{type = "fluid", name = "chlorine", amount = 60}
		},
	results =
		{
			{type = "fluid", name = "phosphorus-tricloride", amount = 50}
		},
	main_product = "phosphorus-tricloride",
	category = "electrolyzer"
	},
	--make phosphorous acid: not used atm
	--[[
	{
	type = "recipe",
	name = "phosphorus-acid",
	ingredients =
		{
			{type = "fluid", name = "phosphorus-tricloride", amount = 20},
			{type = "fluid", name = "water", amount = 60}
		},
	results =
		{
			{type = "fluid", name = "phosphorus-acid", amount = 20},
			{type = "fluid", name = "hydrogen-chloride", amount = 60},
		},
	main_product = "phosphorus-acid"
	},
	]]--
	{
	type = "recipe",
	name = "phosphoryl-chloride",
	ingredients =
		{
			{type = "fluid", name = "phosphorus-tricloride", amount = 20},
			{type = "fluid", name = "oxygen", amount = 10}
		},
	results =
		{
			{type = "fluid", name = "phosphoryl-chloride", amount = 40}
		},
	main_product = "phosphoryl-chloride",
	category = "electrolyzer"
	},
	{
	type = "recipe",
	name = "tributyl-phosphate",
	ingredients =
		{
			{type = "fluid", name = "phosphoryl-chloride", amount = 10},
			{type = "fluid", name = "butanol", amount = 30}
		},
	results =
		{
			{type = "fluid", name = "tributyl-phosphate", amount = 10},
			{type = "fluid", name = "hydrogen-chloride", amount = 30},
		},
	main_product = "tributyl-phosphate",
	category = "electrolyzer"
	},
	{
	type = "recipe",
	name = "ree-from-ash",
	ingredients =
		{
			{type = "fluid", name = "tributyl-phosphate", amount = 20},
			{type = "item", name = "ash", amount = 25}
		},
	results =
		{
			{type = "item", name = "rare-earth-ore", amount = 5},
		},
	main_product = "rare-earth-ore",
	category = "electrolyzer"
	},
}
)

	--update first log recipe
data.raw.recipe["log1"].category="starter-nursery"
	
data.raw.recipe["iron-plate"].enabled = false

RECIPE("bio-reactor"):replace_ingredient('super-alloy','boron')
RECIPE("bio-reactor"):replace_ingredient('gasturbinemk02','gasturbinemk01')


--modify pyro recipes to give byproduct ores
--copper gives moly
fun.results_replacer(data.raw.recipe["grade-1-copper-crush"],"stone","molybdenum-ore")
fun.results_replacer(data.raw.recipe["copper-rejects-recrush"],"gravel","molybdenum-ore")


data:extend({
	{
    type = 'recipe',
    name = 'electronic-circuit-0',
    category = 'handcrafting',
    enabled = true,
    energy_required = 2,
    ingredients = {
        {type = 'item', name = 'copper-plate', amount = 10},
        {type = 'item', name = 'copper-cable', amount = 10},
        {type = 'item', name = 'wood', amount = 1}, -- to be replaced with seaweed board
    },
    results = {
        {type = 'item', name = 'electronic-circuit-0', amount = 3}
    },
    subgroup = 'py-hightech-tier-1',
    order = 'aaa'
	},
})

RECIPE {
    type = 'recipe',
    name = 'fish-start-01',
    category = 'fish-farm',
    enabled = true,
    energy_required = 20,
    ingredients = {
        {type = 'item', name = 'seaweed', amount = 20},
        {type = 'fluid', name = 'water', amount = 50},
    },
    results = {
        {type = 'item', name = 'fish', amount = 2},
    },
    main_product = "fish",
    subgroup = 'py-alienlife-fish',
    order = 'a',
	}
	
RECIPE {
    type = "recipe",
    name = "coal-gas-from-seaweed",
    category = "distilator",
    enabled = true,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "seaweed", amount = 10}
    },
    results = {
        {type = "fluid", name = "coal-gas", amount = 5},
        {type = "fluid", name = "tar", amount = 5},
        {type = "item", name = "raw-coal", amount = 4}
    },
    main_product = "coal-gas",
    icon = "__PyBlock__/graphics/icons/coalgas-from-seaweed.png",
    icon_size = 64,
    subgroup = "py-syngas",
    order = "f"
}