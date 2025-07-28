-- early quartz
RECIPE {
	type = "recipe",
	name = "sand-quartz-sifting",
	category = "screener",
	enabled = false,
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
}:add_unlock("glass")

-- geothermal water fake mining recipe
RECIPE {
	type = "recipe",
	name = "geothermal-water",
	category = "geowater",
	enabled = false,
	energy_required = 4,
	ingredients = {
		{ type = "fluid", name = "pressured-water", amount = 3750 },
    { type = "item", name = "pipe", amount = 20 }
	},
	results = {
		{ type = "fluid", name = "geothermal-water", amount = 400, temperature = 3000 },
    { type = "item", name = "pipe", amount_min = 0, amount_max = 20, probability = 0.9 }
	},
	main_product = "geothermal-water",
}:add_unlock("geothermal-power-mk01")

-- bootstrapping stone to moss
RECIPE {
  type = "recipe",
  name = "moss-cultivation",
  category = "washer",
	subgroup = "py-alienlife-moss",
  enabled = false,
  energy_required = 160,
  ingredients = {
    { type = "item", name = "stone", amount = 24 },
    { type = "fluid", name = "water", amount = 1200 },
  },
  results = {
    { type = "item", name = "stone", amount_min = 6, amount_max = 12, probability = 0.5 },
    { type = "fluid", name = "muddy-sludge", amount = 1200 },
    { type = "item", name = "moss", amount = 1, probability = 0.08 },
  },
  main_product = "moss"
}:add_unlock("moss-mk01")

-- bootstrapping wood to sap
RECIPE {
  type = "recipe",
  name = "sap-cultivation",
  category = "fwf",
	subgroup = "py-alienlife-sap",
  enabled = false,
  energy_required = 120,
  ingredients = {
    { type = "item", name = "wood-seedling", amount = 12 },
    { type = "fluid", name = "water", amount = 800 },
  },
  results = {
    { type = "item", name = "saps", amount_min = 0, amount_max = 2, probability = 0.1 },
    { type = "item", name = "log", amount = 4 }
  },
  main_product = "saps"
}:add_unlock("wood-processing")

-- native flora recipes
RECIPE {
  type = "recipe",
  name = "synthesize-flora",
  category = "cultivation",
	subgroup = "py-alienlife-genetics",
  enabled = false,
  energy_required = 12,
  ingredients = {
    { type = "item", name = "soil", amount = 8 },
    { type = "fluid", name = "water", amount = 500 },
    { type = "item", name = "fawogae", amount = 4 }
  },
  results = {
    { type = "item", name = "native-flora", amount = 1, probability = 0.02 }
  },
  show_amount_in_title = false
}:add_unlock("automation-science-pack")

RECIPE {
  type = "recipe",
  name = "flora-cultivation",
  category = "cultivation",
	subgroup = "py-alienlife-genetics",
  enabled = false,
  energy_required = 15,
  ingredients = {
    { type = "item", name = "soil", amount = 12 },
    { type = "fluid", name = "water", amount = 1800 },
    { type = "item", name = "native-flora", amount = 5 },
  },
  results = {
    { type = "item", name = "native-flora", amount = 20 },
    { type = "item", name = "soil", amount_min = 0, amount_max = 6, allow_productivity = false }
  },
  main_product = "native-flora"
}:add_unlock("automation-science-pack")

RECIPE {
  type = "recipe",
  name = "flora-cultivation-2",
  category = "cultivation",
	subgroup = "py-alienlife-genetics",
  enabled = false,
  energy_required = 20,
  ingredients = {
    { type = "item", name = "soil", amount = 15 },
    { type = "item", name = "manure", amount = 2 },
    { type = "fluid", name = "water", amount = 2400 },
    { type = "item", name = "native-flora", amount = 10 },
  },
  results = {
    { type = "item", name = "native-flora", amount_min = 30, amount_max = 50 },
    { type = "item", name = "soil", amount_min = 0, amount_max = 8, allow_productivity = false }
  },
  main_product = "native-flora"
}:add_unlock("auog")

RECIPE {
  type = "recipe",
  name = "flora-cultivation-3",
  category = "cultivation",
	subgroup = "py-alienlife-genetics",
  enabled = false,
  energy_required = 30,
  ingredients = {
    { type = "item", name = "soil", amount = 18 },
    { type = "item", name = "fertilizer", amount = 2 },
    { type = "fluid", name = "water", amount = 3300 },
    { type = "item", name = "native-flora", amount = 15 },
  },
  results = {
    { type = "item", name = "native-flora", amount_min = 60, amount_max = 90 },
    { type = "item", name = "soil", amount_min = 0, amount_max = 6, allow_productivity = false }
  },
  main_product = "native-flora"
}:add_unlock("fertilizer-mk02")

--UNUSED

--nickel from clay

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
}:add_unlock("uranium-mk01")
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
}:add_unlock("uranium-mk01")
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
}:add_unlock("uranium-mk01")
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
}:add_unlock("uranium-mk01")
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
}:add_unlock("rare-earth-tech")
]]