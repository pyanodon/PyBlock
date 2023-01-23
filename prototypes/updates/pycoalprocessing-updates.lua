RECIPE("solid-separator"):remove_unlock("ash-separation"):set_fields{enabled = true}:remove_ingredient("steel-plate")

RECIPE("ash-separation"):remove_unlock("ash-separation"):set_fields{enabled = true}

data.raw.recipe["landfill"].ingredients = { { type = "item", name = "stone", amount = 1 },
	{ type = "item", name = "sand", amount = 2 } }
data.raw.recipe["landfill"].results = { { type = "item", name = "landfill", amount = 2 } }

RECIPE("soil-washing"):remove_unlock("soil-washing"):set_fields{enabled = true}

RECIPE("landfill"):remove_unlock("landfill"):set_fields{enabled = true}

TECHNOLOGY("landfill"):set_fields{enabled = false}

RECIPE("coal-gas-from-wood"):set_fields{enabled = true}:remove_unlock("coal-processing-1")

--UNUSED

--RECIPE("tailings-dust"):remove_unlock("fluid-separation"):set_fields{enabled = true, category = "quenching-tower"}
--RECIPE("tailings-classification"):remove_unlock("fluid-separation"):set_fields{enabled = true, category = "screener"}
