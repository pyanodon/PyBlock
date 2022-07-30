RECIPE("tailings-dust"):remove_unlock("fluid-separation"):set_fields{enabled = true, category = "quenching-tower"}
RECIPE("tailings-classification"):remove_unlock("fluid-separation"):set_fields{enabled = true, category = "screener"}

data.raw.recipe["landfill"].ingredients = { { type = "item", name = "stone", amount = 1 },
	{ type = "item", name = "sand", amount = 2 } }
data.raw.recipe["landfill"].results = { { type = "item", name = "landfill", amount = 2 } }

--TECHNOLOGY("landfill"):set_fields{enabled = false}

RECIPE("landfill"):remove_unlock("landfill"):set_fields{enabled = true}

