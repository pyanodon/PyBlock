RECIPE{
  type = "recipe",
  name = "coal-dust-early",
  category = "centrifuging",
  enabled = false,
  energy_required = 10,
  ingredients = {
    {type = "fluid", name = "thickened-coal-fines", amount = 1000},
  },
  results = {
    {type = "item", name = "carbon-dust", amount = 12},
  },
  main_product = "carbon-dust",
  subgroup = "py-fusion-items",
  order = "a"
}:add_unlock("diamond-mining")

RECIPE{
  type = "recipe",
  name = "making-dust-into-diamonds",
  category = "hpf",
  enabled = false,
  energy_required = 45,
  ingredients = {
    {type = "item", name = "carbon-dust", amount = 30},
    {type = 'fluid', name = 'pressured-steam', amount = 2000, minimum_temperature = 2000},
  },
  results = {
    {type = "item", name = "kimberlite-rock", amount = 1},
  },
  main_product = "kimberlite-rock",
  subgroup = "py-fusion-items",
  order = "a"
}:add_unlock("diamond-mining")