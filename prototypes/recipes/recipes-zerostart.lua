-- basic handcrafting recipes
RECIPE{
  name = "forage-seaweed",
  enabled = true,
  energy_required = 2.5,
  category = "handcrafting",
  results = {{type = "item", name = "seaweed", amount_min = 0, amount_max = 4}},
  allow_as_intermediate = false,
  main_product = "seaweed"
}
RECIPE{
  name = "forage-wood",
  enabled = true,
  energy_required = 2.5,
  category = "handcrafting",
  results = {{type = "item", name = "log", amount_min = 0, amount_max = 2}},
  allow_as_intermediate = false,
  main_product = "log"
}
RECIPE{
  name = "forage-soil",
  enabled = true,
  energy_required = 2,
  category = "handcrafting",
  results = {{type = "item", name = "soil", amount_min = 0, amount_max = 8}},
  allow_as_intermediate = false,
  main_product = "soil"
}

-- quicker dehydration
RECIPE{
  name = "dry-seaweed",
  enabled = true,
  energy_required = 0.5,
  category = "handcrafting",
  ingredients = {{type = "item", name = "seaweed", amount = 1}},
  results = {{type = "item", name = "dry-seaweed", amount = 1}},
  main_product = "dry-seaweed"
}
RECIPE{
  name = "bulk-dry-seaweed",
  enabled = true,
  energy_required = 5,
  category = "smelting",
  ingredients = {{type = "item", name = "seaweed", amount = 4}},
  results = {{type = "item", name = "dry-seaweed", amount_min = 0, amount_max = 4, probability = 0.9}},
  allow_as_intermediate = false,
  main_product = "dry-seaweed"
}
-- rehydration and bulk rehydration
RECIPE{
  name = "wet-seaweed",
  enabled = true,
  energy_required = 0.5,
  category = "handcrafting",
  ingredients = {{type = "item", name = "dry-seaweed", amount = 1}},
  results = {{type = "item", name = "seaweed", amount = 1}},
  allow_as_intermediate = false,
  main_product = "seaweed"
}
RECIPE{
  name = "seaweed-rehydrate",
  enabled = true,
  energy_required = 0.5,
  category = "crafting-with-fluid",
  ingredients = {
    { type = "item", name = "dry-seaweed", amount = 2 },
    { type = "fluid", name = "water", amount = 100 }
  },
  results = {{type = "item", name = "seaweed", amount = 2}},
  allow_as_intermediate = false,
  main_product = "seaweed"
}

-- charcoal recipes
RECIPE{
  name = "handburn-charcoal",
  enabled = true,
  energy_required = 1,
  category = "handcrafting",
  ingredients = {{type = "item", name = "wood", amount = 1}},
  results = {{type = "item", name = "charcoal", amount = 1, probability = 0.5}},
  allow_as_intermediate = false,
  main_product = "charcoal"
}
RECIPE{
  name = "bulk-charcoal",
  enabled = true,
  energy_required = 5,
  category = "smelting",
  ingredients = {{type = "item", name = "wood", amount = 2}},
  results = {{type = "item", name = "charcoal", amount_min = 0, amount_max = 5}},
  allow_as_intermediate = false,
  main_product = "charcoal"
}

-- handcraft bricks
RECIPE{
  name = "seaweed-bricks",
  enabled = true,
  energy_required = 2,
  category = "crafting",
  ingredients = {
    { type = "item", name = "dry-seaweed", amount = 1 },
    { type = "item", name = "charcoal", amount = 1 },
    { type = "item", name = "soil", amount = 2 }
  },
  results = {{type = "item", name = "stone-brick", amount = 2}},
  main_product = "stone-brick"
}

-- crush charcoal into ash and dust
RECIPE{
  name = "crush-charcoal",
  enabled = true,
  energy_required = 1,
  category = "handcrafting",
  ingredients = {{type = "item", name = "charcoal", amount = 1}},
  results = {
    { type = "item", name = "ash", amount = 1, probability = 0.4 },
    { type = "item", name = "coal-dust", amount = 1, probability = 0.2 }
  },
  allow_as_intermediate = false,
  main_product = "ash"
}
RECIPE{
  name = "sort-charcoal",
  enabled = true,
  energy_required = 2.5,
  category = "solid-separator",
  ingredients = {{type = "item", name = "charcoal", amount = 4}},
  results = {
    { type = "item", name = "ash", amount_min = 0, amount_max = 3, probability = 0.8 },
    { type = "item", name = "coal-dust", amount = 1, probability = 0.4 },
    { type = "item", name = "soot", amount = 1, probability = 0.2 }
  },
  allow_as_intermediate = false,
  main_product = "ash"
}

-- handsort ash for copper and iron
RECIPE{
  name = "ash-sorting-manual",
  enabled = true,
  energy_required = 5,
  category = "handcrafting",
  ingredients = {{type = "item", name = "ash", amount = 2}},
  results = {
    { type = "item", name = "iron-ore", amount = 1, probability = 0.4 },
    { type = "item", name = "copper-ore", amount = 1, probability = 0.4 }
  },
  allow_as_intermediate = false,
  main_product = "iron-ore"
}