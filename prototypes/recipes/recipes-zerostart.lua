-- basic handcrafting recipes
RECIPE{
  name = "forage-seaweed",
  enabled = true,
  energy_required = 5,
  category = "handcrafting",
  results = {{type = "item", name = "seaweed", amount_min = 0, amount_max = 4, ignored_by_stats = 4}},
  allow_as_intermediate = false,
  main_product = "seaweed"
}
RECIPE{
  name = "forage-wood",
  enabled = true,
  energy_required = 5,
  category = "handcrafting",
  results = {{type = "item", name = "log", amount_min = 0, amount_max = 2, ignored_by_stats = 2}},
  allow_as_intermediate = false,
  main_product = "log"
}
RECIPE{
  name = "forage-soil",
  enabled = true,
  energy_required = 2,
  category = "handcrafting",
  results = {{type = "item", name = "soil", amount_min = 0, amount_max = 5, ignored_by_stats = 5}},
  allow_as_intermediate = false,
  main_product = "soil"
}
RECIPE{
  name = "forage-fish",
  enabled = true,
  energy_required = 8,
  category = "handcrafting",
  results = {{type = "item", name = "fish", amount_min = 0, amount_max = 2, ignored_by_stats = 2}},
  allow_as_intermediate = false,
  main_product = "fish"
}

RECIPE{
  name = "dry-seaweed",
  enabled = true,
  energy_required = 5,
  category = "handcrafting",
  additional_categories = {"smelting"},
  ingredients = {{type = "item", name = "seaweed", amount = 4}},
  results = {{type = "item", name = "dry-seaweed", amount_min = 0, amount_max = 4, probability = 0.9}},
  allow_as_intermediate = false,
  allow_productivity = true,
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
  enabled = false,
  energy_required = 5,
  category = "seaweed",
  ingredients = {
    { type = "item", name = "dry-seaweed", amount = 8 },
    { type = "fluid", name = "water", amount = 100 }
  },
  results = {{type = "item", name = "seaweed", amount = 8}},
  allow_as_intermediate = false,
  main_product = "seaweed"
}:add_unlock("seaweed-mk00")

RECIPE{
  name = "hot-coals",
  enabled = true,
  energy_required = 5,
  category = "handcrafting",
  additional_categories = {"smelting"},
  ingredients = {{type = "item", name = "wood", amount = 3}},
  results = {{type = "item", name = "hot-coals", amount_min = 2, amount_max = 8}},
  allow_as_intermediate = false,
  allow_productivity = true,
  main_product = "hot-coals"
}

-- proper bricks
RECIPE{
  name = "seaweed-bricks",
  enabled = true,
  energy_required = 5,
  category = "handcrafting",
  additional_categories = {"hpf"},
  ingredients = {
    { type = "item", name = "dry-seaweed", amount = 3 },
    { type = "item", name = "charcoal", amount = 2 },
    { type = "item", name = "soil", amount = 4 }
  },
  results = {{type = "item", name = "stone-brick", amount = 8}},
  main_product = "stone-brick"
}

-- sort through coals
RECIPE{
  name = "handsort-coals",
  enabled = true,
  energy_required = 1,
  category = "handcrafting",
  ingredients = {{type = "item", name = "hot-coals", amount = 1}},
  results = {
    { type = "item", name = "ash", amount = 1, probability = 0.3 },
    { type = "item", name = "charcoal", amount = 1, probability = 0.2 },
    { type = "item", name = "soot", amount = 1, probability = 0.45 }
  },
  allow_as_intermediate = false,
  main_product = "ash"
} -- sort coals, but automatic
RECIPE{
  name = "sort-hot-coals",
  enabled = false,
  energy_required = 2.5,
  icons = {
    {
      icon = "__pycoalprocessinggraphics__/graphics/icons/ash-separation.png",
      icon_size = 32
    },
    {
      icon = "__PyBlock__/graphics/icons/hot-coals.png",
      icon_size = 64,
      scale = 0.2,
      shift = {
        8, -8
      }
    }
  },
  category = "solid-separator",
  ingredients = {{type = "item", name = "hot-coals", amount = 4}},
  results = {
    { type = "item", name = "ash", amount_min = 0, amount_max = 3 },
    { type = "item", name = "charcoal", amount_min = 0, amount_max = 2 },
    { type = "item", name = "soot", amount_min = 0, amount_max = 4, probability = 0.7 }
  },
  main_product = "ash"
}:add_unlock("ash-separation")
RECIPE{
  name = "compress-hot-coals",
  enabled = false,
  energy_required = 7,
  category = "hpf",
  ingredients = {{type = "item", name = "hot-coals", amount = 8}},
  results = {
    { type = "item", name = "charcoal", amount_min = 1, amount_max = 5 },
    { type = "item", name = "ash", amount = 1, probability = 0.6 }
  },
  main_product = "charcoal"
}:add_unlock("coke-mk01")
