-- basic handcrafting recipes
RECIPE{
  name = "forage-seaweed",
  enabled = true,
  energy_required = 5,
  results = {
    { type = "item", name = "seaweed", amount_min = 0, amount_max = 2 }
  },
  main_product = "seaweed"
}
RECIPE{
  name = "forage-wood",
  enabled = true,
  energy_required = 5,
  results = {
    { type = "item", name = "log", amount_min = 0, amount_max = 2 }
  },
  main_product = "log"
}
RECIPE{
  name = "forage-soil",
  enabled = true,
  energy_required = 2,
  results = {
    { type = "item", name = "soil", amount_min = 0, amount_max = 8 }
  },
  main_product = "soil"
}
RECIPE{
  name = "forage-spores",
  enabled = true,
  energy_required = 2,
  ingredients = {
    { type = "item", name = "soil", amount = 1 }
  },
  results = {
    { type = "item", name = "fawogae-spore", amount = 1, probability = 0.3 }
  },
  main_product = "fawogae-spore"
}

-- quicker dehydration
RECIPE{
  name = "dry-seaweed",
  enabled = true,
  energy_required = 2,
  ingredients = {
    { type = "item", name = "seaweed", amount = 1 },
  },
  results = {
    { type = "item", name = "dry-seaweed", amount = 1 },
  },
  main_product = "dry-seaweed"
}

-- quicker rehydration
RECIPE{
  name = "wet-seaweed",
  enabled = true,
  energy_required = 0.5,
  ingredients = {
    { type = "item", name = "dry-seaweed", amount = 1 },
  },
  results = {
    { type = "item", name = "seaweed", amount = 1 },
  },
  main_product = "seaweed"
}