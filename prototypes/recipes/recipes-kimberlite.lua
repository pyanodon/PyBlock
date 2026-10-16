RECIPE{
  type = "recipe",
  name = "coal-dust-early",
  categories = {"centrifuging"},
  enabled = false,
  energy_required = 10,
  ingredients = {
    {type = "fluid", name = "thickened-coal-fines", amount = 200},
  },
  results = {
    {type = "item", name = "carbon-dust", amount_min = 8, amount_max = 12},
  },
  main_product = "carbon-dust",
  subgroup = "py-fusion-items",
  order = "a"
}:add_unlock("diamond-mining")

RECIPE{
  type = "recipe",
  name = "making-dust-into-diamonds",
  categories = {"hpf"},
  enabled = false,
  energy_required = 60,
  ingredients = {
    {type = "item", name = "carbon-dust", amount = 9},
    {type = 'fluid', name = 'pressured-steam', amount = 1000, minimum_temperature = 2000},
  },
  results = {
    {type = "item", name = "kimberlite-rock", amount_min = 1, amount_max = 9},
  },
  main_product = "kimberlite-rock",
  subgroup = "py-fusion-items",
  order = "a"
}:add_unlock("diamond-mining")