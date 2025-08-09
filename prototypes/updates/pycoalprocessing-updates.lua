RECIPE("ash-separation"):set_fields {results = {
	{type = "item", name = "coal-dust",  amount = 1, probability = 0.5},
	{type = "item", name = "iron-oxide", amount = 1, probability = 0.05},
	{type = "item", name = "soot",       amount = 1, probability = 1}
}}

-- move oxide smelting to ash processing
RECIPE("iron-oxide-smelting"):replace_unlock("coal-processing-1", "ash-separation")

data.raw.recipe["landfill"].ingredients = {{type = "item", name = "stone", amount = 1},
	{type = "item", name = "sand",  amount = 2}}
data.raw.recipe["landfill"].results = {{type = "item", name = "landfill", amount = 2}}

RECIPE("soil-washing"):remove_unlock("soil-washing"):set_fields {enabled = true}

RECIPE("landfill"):remove_unlock("landfill"):set_fields {enabled = true}

TECHNOLOGY("landfill"):set_fields {enabled = false}

RECIPE("coal-gas-from-wood"):set_fields {enabled = true}:remove_unlock("coal-processing-1")

-- buff tailings -> nexelit
RECIPE("nexelit-ore-1"):replace_result("nexelit-ore", "nexelit-ore", 3)