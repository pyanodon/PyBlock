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
  energy_required = 1,
  category = "handcrafting",
  results = {{type = "item", name = "soil", amount_min = 0, amount_max = 5}},
  allow_as_intermediate = false,
  main_product = "soil"
}
RECIPE{
  name = "forage-fish",
  enabled = true,
  energy_required = 8,
  category = "handcrafting",
  results = {{type = "item", name = "fish", amount_min = 0, amount_max = 2}},
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
  allow_as_intermediate = false,
  main_product = "dry-seaweed"
}
RECIPE{
  name = "bulk-dry-seaweed",
  enabled = false,
  energy_required = 5,
  category = "smelting",
  ingredients = {{type = "item", name = "seaweed", amount = 4}},
  results = {{type = "item", name = "dry-seaweed", amount_min = 0, amount_max = 4, probability = 0.9}},
  allow_as_intermediate = false,
  main_product = "dry-seaweed"
}:add_unlock("seaweed-mk00")
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
  energy_required = 0.5,
  category = "crafting-with-fluid",
  ingredients = {
    { type = "item", name = "dry-seaweed", amount = 2 },
    { type = "fluid", name = "water", amount = 100 }
  },
  results = {{type = "item", name = "seaweed", amount = 2}},
  allow_as_intermediate = false,
  main_product = "seaweed"
}:add_unlock("seaweed-mk00")

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
  enabled = false,
  energy_required = 5,
  category = "smelting",
  ingredients = {{type = "item", name = "wood", amount = 2}},
  results = {{type = "item", name = "charcoal", amount_min = 0, amount_max = 5}},
  allow_as_intermediate = false,
  main_product = "charcoal"
}:add_unlock("wood-processing-0")

-- handcraft bricks
RECIPE{
  name = "seaweed-bricks-handcraft",
  enabled = true,
  energy_required = 2,
  category = "handcrafting",
  ingredients = {
    { type = "item", name = "dry-seaweed", amount = 1 },
    { type = "item", name = "charcoal", amount = 3 },
    { type = "item", name = "soil", amount = 4 }
  },
  results = {{type = "item", name = "stone-brick", amount = 3}},
  main_product = "stone-brick"
}
-- proper smelt bricks
RECIPE{
  name = "seaweed-bricks",
  enabled = false,
  energy_required = 5,
  category = "hpf",
  ingredients = {
    { type = "item", name = "dry-seaweed", amount = 3 },
    { type = "item", name = "charcoal", amount = 6 },
    { type = "item", name = "soil", amount = 4 }
  },
  results = {{type = "item", name = "stone-brick", amount = 8}},
  main_product = "stone-brick"
}:add_unlock("coal-processing-1")

-- crush charcoal into ash and dust
RECIPE{
  name = "handsort-charcoal",
  enabled = false,
  energy_required = 1,
  category = "handcrafting",
  ingredients = {{type = "item", name = "charcoal", amount = 1}},
  results = {
    { type = "item", name = "ash", amount = 1, probability = 0.4 },
    { type = "item", name = "coal-dust", amount = 1, probability = 0.2 },
    { type = "item", name = "soot", amount = 1, probability = 0.75 }
  },
  allow_as_intermediate = false,
  main_product = "ash"
}:add_unlock("fawogae-mk00")
-- sort charcoal, but automatic
RECIPE{
  name = "sort-charcoal",
  enabled = false,
  energy_required = 2.5,
  icons = {
    {
      icon = "__pycoalprocessinggraphics__/graphics/icons/ash-separation.png",
      icon_size = 32
    },
    {
      icon = "__PyBlock__/graphics/icons/charcoal.png",
      icon_size = 64,
      scale = 0.2,
      shift = {
        8, -8
      }
    }
  },
  category = "solid-separator",
  ingredients = {{type = "item", name = "charcoal", amount = 4}},
  results = {
    { type = "item", name = "ash", amount_min = 0, amount_max = 3, probability = 0.8 },
    { type = "item", name = "coal-dust", amount = 1, probability = 0.4 },
    { type = "item", name = "soot", amount = 1, probability = 0.2 }
  },
  main_product = "ash"
}:add_unlock("ash-separation")
-- handsort ash for soot and oxide
RECIPE{
  name = "ash-sorting-manual",
  enabled = false,
  energy_required = 2,
  icon = "__pycoalprocessinggraphics__/graphics/icons/ash-separation.png",
  icon_size = 32,
  category = "handcrafting",
  ingredients = {{type = "item", name = "ash", amount = 5}},
  results = {
    { type = "item", name = "coal-dust", amount = 1, probability = 0.5 },
    { type = "item", name = "iron-oxide", amount = 1, probability = 0.2 },
    { type = "item", name = "soot", amount = 1, probability = 0.75 }
  },
  allow_as_intermediate = false
}:add_unlock("fawogae-mk00")
-- handsort soot for copper and iron
RECIPE{
  name = "soot-sorting-manual",
  enabled = false,
  energy_required = 2,
  icon = "__pypetroleumhandlinggraphics__/graphics/icons/class-s.png",
  category = "handcrafting",
  ingredients = {{type = "item", name = "soot", amount = 1}},
  results = {
    { type = "item", name = "iron-ore", amount = 1, probability = 0.4 },
    { type = "item", name = "copper-ore", amount = 1, probability = 0.4 }
  },
  allow_as_intermediate = false
}:add_unlock("fawogae-mk00")

-- basic swf recipe
RECIPE{
  name = "log0",
  enabled = false,
  energy_required = 120,
  category = "fwf",
  ingredients = {{type = "item", name = "wood-seeds", amount = 2}},
  results = {{type = "item", name = "log", amount = 5}},
  main_product = "log"
}:add_unlock("wood-processing-0")
-- basic tree recipe for swf
RECIPE{
  name = "tree-mk00",
  enabled = false,
  energy_required = 40,
  category = "handcrafting",
  ingredients = {
    {type = "item", name = "wood-seeds", amount = 7},
    {type = "item", name = "planter-box", amount = 2},
  },
  results = {{type = "item", name = "tree-mk01", amount = 1}},
  main_product = "tree-mk01"
}:add_unlock("wood-processing-0")