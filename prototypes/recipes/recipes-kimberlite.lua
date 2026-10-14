RECIPE{
  type = "recipe",
  name = "thicken-coal-fines",
  categories = {"thickener"},
  enabled = false,
  energy_required = 5,
  ingredients = {
    {type = "fluid", name = "high-ash-fines", amount = 150},
    {type = "item", name = "starch", amount = 1},
  },
  results = {
    {type = "fluid", name = "thickened-coal-fines", amount = 100},
    {type = "fluid", name = "water", amount = 50},
  },
  main_product = "thickened-coal-fines",
  subgroup = "py-fusion-items",
  order = "a"
}:add_unlock("diamond-mining")

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
    {type = "item", name = "carbon-dust", amount = 8},
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
  energy_required = 45,
  ingredients = {
    {type = "item", name = "carbon-dust", amount = 9},
    {type = 'fluid', name = 'pressured-steam', amount = 2000, minimum_temperature = 2000},
  },
  results = {
    {type = "item", name = "kimberlite-rock", amount_min = 0, amount_max = 5},
  },
  main_product = "kimberlite-rock",
  subgroup = "py-fusion-items",
  order = "a"
}:add_unlock("diamond-mining")
