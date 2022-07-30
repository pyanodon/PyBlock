local fun = require("functions/functions")

--handcraft seaweed to raw coal
RECIPE {
	type = "recipe",
	name = "handpressed-coal",
	ingredients =
	{
		{ type = "item", name = "seaweed", amount = 5 },
	},
	results =
	{
		{ type = "item", name = "raw-coal", amount = 1 }
	},
	main_product = "raw-coal",
	category = "handcrafting"
}

RECIPE {
	type = "recipe",
	name = "coal-gas-from-seaweed",
	category = "distilator",
	enabled = true,
	energy_required = 3,
	ingredients = {
		{ type = "item", name = "seaweed", amount = 10 }
	},
	results = {
		{ type = "fluid", name = "coal-gas", amount = 5 },
		{ type = "fluid", name = "tar", amount = 5 },
		{ type = "item", name = "raw-coal", amount = 4 }
	},
	main_product = "coal-gas",
	icon = "__PyBlock__/graphics/icons/coalgas-from-seaweed.png",
	icon_size = 64,
	subgroup = "py-syngas",
	order = "f"
}

--new recipes
RECIPE {
	type = "recipe",
	name = "soil-to-stone",
	category = "washer",
	enabled = true,
	energy_required = 4,
	ingredients =
	{
		{ type = "item", name = "soil", amount = 24 },
		{ type = "fluid", name = "water", amount = 400 }
	},
	results =
	{
		{ type = "item", name = "stone", amount = 10 },
		{ type = "fluid", name = "dirty-water-light", amount = 50 }
	},
	main_product = "stone",
	icon = "__pycoalprocessinggraphics__/graphics/icons/soil-washer.png",
	icon_size = 32,
	subgroup = "py-washer",
	order = "c"
}

--[[
RECIPE {
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
}
]]--
--[[
RECIPE {
	type = "recipe",
	name = "sand-quartz-sifting",
	category = "screener",
	enabled = true,
	ingredients =
	{
		{ type = "item", name = "sand", amount = 10 }
	},
	results =
	{
		{ type = "item", name = "ore-quartz", amount = 2 }
	},
	main_product = "ore-quartz",
	icon = "__pyraworesgraphics__/graphics/icons/ores/ore-quartz.png",
	icon_size = 32,
	subgroup = "py-washer",
	order = "c",
	energy_required = 4
}
]]--

--tit ore from rich dust in classifer
--[[
RECIPE {
	type = "recipe",
	name = "titanium-from-rich-dust",
	category = "classifier",
	enabled = false,
	ingredients =
	{
		{ type = "item", name = "rich-dust", amount = 10 }
	},
	results =
	{
		{ type = "item", name = "ore-titanium", amount = 2 }
	},
	main_product = "ore-titanium",
	icon = "__pyraworesgraphics__/graphics/icons/ores/ore-titanium.png",
	icon_size = 32,
	subgroup = "py-items-class",
	order = "b"
}
]]--

--[[
RECIPE {
	type = "recipe",
	name = "log-to-moss",
	category = "wpu",
	energy_required = 10,
	ingredients =
	{
		{ name = "log", amount = 4 }
	},
	results = {
		{ name = "moss", amount = 1 }
	}
}
]]--
--[[
RECIPE {
	type = "recipe",
	name = "sap-from-seamoss",
	category = "distilator",
	energy_required = 10,
	ingredients =
	{
		{ name = "seaweed", amount = 10 },
		{ name = "moss", amount = 8 },
		{ name = "wood", amount = 5 }
	},
	results = {
		{ name = "saps", amount = 2 }
	}
}
]]--
--nickel from clay

--[[
RECIPE {
	type = "recipe",
	name = "nickel-alum-from-clay",
	category = "hpf",
	enabled = true,
	energy_required = 6,
	ingredients =
	{
		{ type = "item", name = "clay", amount = 6 },
		{ type = "fluid", name = "sulfuric-acid", amount = 20 }
	},
	results =
	{
		{ type = "item", name = "ore-nickel", amount = 2 },
		{ type = "item", name = "ore-aluminium", amount = 1, probability = 0.2 }
	},
	main_product = "ore-nickel",
	subgroup = "py-quenching-ores",
	order = "tailings-e"
}
]]

--new fluids for ree from ash
--[[
RECIPE {
	type = "recipe",
	name = "propene-to-butanol",
	ingredients =
	{
		{ type = "fluid", name = "propene", amount = 50 },
		{ type = "fluid", name = "hydrogen", amount = 50 },
		{ type = "fluid", name = "carbon-dioxide", amount = 25 }
	},
	results =
	{
		{ type = "fluid", name = "butanol", amount = 50 }
	},
	main_product = "butanol",
	category = "electrolyzer"
}:add_unlock('uranium-mk01')
]]--

--[[
RECIPE {
	type = "recipe",
	name = "phosphorus-tricloride",
	ingredients =
	{
		{ type = "item", name = "powdered-phosphate-rock", amount = 10 },
		{ type = "fluid", name = "chlorine", amount = 60 }
	},
	results =
	{
		{ type = "fluid", name = "phosphorus-tricloride", amount = 50 }
	},
	main_product = "phosphorus-tricloride",
	category = "electrolyzer"
}:add_unlock('uranium-mk01')
]]--

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
	]] --

	--[[
RECIPE {
	type = "recipe",
	name = "phosphoryl-chloride",
	ingredients =
	{
		{ type = "fluid", name = "phosphorus-tricloride", amount = 20 },
		{ type = "fluid", name = "oxygen", amount = 10 }
	},
	results =
	{
		{ type = "fluid", name = "phosphoryl-chloride", amount = 40 }
	},
	main_product = "phosphoryl-chloride",
	category = "electrolyzer"
}:add_unlock('uranium-mk01')
]]--

--[[
RECIPE {
	type = "recipe",
	name = "tributyl-phosphate",
	ingredients =
	{
		{ type = "fluid", name = "phosphoryl-chloride", amount = 10 },
		{ type = "fluid", name = "butanol", amount = 30 }
	},
	results =
	{
		{ type = "fluid", name = "tributyl-phosphate", amount = 10 },
		{ type = "fluid", name = "hydrogen-chloride", amount = 30 },
	},
	main_product = "tributyl-phosphate",
	category = "electrolyzer"
}:add_unlock('uranium-mk01')
]]

--[[
RECIPE {
	type = "recipe",
	name = "ree-from-ash",
	ingredients =
	{
		{ type = "fluid", name = "tributyl-phosphate", amount = 20 },
		{ type = "item", name = "ash", amount = 25 }
	},
	results =
	{
		{ type = "item", name = "rare-earth-ore", amount = 5 },
	},
	main_product = "rare-earth-ore",
	category = "electrolyzer"
}:add_unlock('rare-earth-tech')
]]

--[[
RECIPE {
	type = "recipe",
	name = "log0",
	category = "fwf-basic",
	enabled = true,
	energy_required = 60,
	ingredients = {},
	results = {
		{ type = "item", name = "log", amount = 3 }
	},
	icon = "__pycoalprocessinggraphics__/graphics/icons/log.png",
	icon_size = 32,
	subgroup = "py-alienlife-plants",
	order = "a1"
}
]]--

--RECIPE('log1'):subgroup_order("py-alienlife-plants", "a2")

--modify pyro recipes to give byproduct ores
--copper gives moly
--fun.results_replacer(data.raw.recipe["grade-1-copper-crush"], "stone", "molybdenum-ore")
--fun.results_replacer(data.raw.recipe["copper-rejects-recrush"], "gravel", "molybdenum-ore")
--[[
RECIPE {
	type = 'recipe',
	name = 'fish-start-01',
	category = 'fish-farm',
	enabled = true,
	energy_required = 100,
	ingredients = {
		{ type = 'item', name = "seaweed", amount = 5 },
		{ type = 'fluid', name = 'water', amount = 50 },
	},
	results = {
		{ type = 'item', name = 'fish', amount = 3 },
	},
	main_product = "fish",
	subgroup = 'py-alienlife-fish',
	order = 'a',
}
]]
--[[
RECIPE {
	type = 'recipe',
	name = 'fish-start-02',
	category = 'fish-farm',
	enabled = true,
	energy_required = 85,
	ingredients = {
		{ type = 'item', name = "seaweed", amount = 5 },
		{ type = 'fluid', name = 'water-saline', amount = 50 },
	},
	results = {
		{ type = 'item', name = 'fish', amount = 5 },
		{ type = 'fluid', name = 'waste-water', amount = 50 },
	},
	main_product = "fish",
	subgroup = 'py-alienlife-fish',
	order = 'a',
}
]]

--[[
RECIPE {
	type = "recipe",
	name = "biosample",
	category = "biofactory",
	enabled = false,
	energy_required = 5,
	ingredients = {
		{ type = "item", name = "bio-container", amount = 10 },
		{ type = "item", name = "seaweed", amount = 4 },
		{ type = "item", name = "moss", amount = 2 },
		{ type = 'fluid', name = 'waste-water', amount = 20 },
		{ type = 'fluid', name = 'phytoplankton', amount = 25 },
		{ type = 'fluid', name = 'zogna-bacteria', amount = 5 },
	},
	results = {
		{ type = "item", name = "bio-sample", amount = 10 },

	},
	main_product = "bio-sample",
	icon = "__pyalienlifegraphics__/graphics/icons/biosample.png",
	icon_size = 64,
	subgroup = "py-alienlife-genetics",
	order = "a"
}:add_unlock('xenobiology')
]]--

--RECIPE('blood-to-zinc'):remove_unlock('molecular-decohesion-mk02'):add_unlock('molecular-decohesion')
