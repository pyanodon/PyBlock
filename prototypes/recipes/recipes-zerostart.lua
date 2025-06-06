RECIPE{
  name = "handcraft-seaweed",
  -- category = "cultivation",
	-- subgroup = "py-alienlife-genetics",
  enabled = true,
  energy_required = 5,
  results = {
    { type = "item", name = "seaweed", amount_min = 0, amount_max = 2 }
  },
  main_product = "seaweed"
}
RECIPE{
  name = "handcraft-soil",
  -- category = "cultivation",
	-- subgroup = "py-alienlife-genetics",
  enabled = true,
  energy_required = 2,
  results = {
    { type = "item", name = "soil", amount_min = 0, amount_max = 8 }
  },
  main_product = "soil"
}

-- make seaweed spoil into dried seaweed
ITEM("seaweed"):spoil("dried-seaweed", 648000)
ITEM{
  name = "dried-seaweed",
  icon = "__pyalienlifegraphics__/graphics/icons/seaweed.png",
  icon_size = 64,
  stack_size = 50
}

-- quicker dehydration


-- quicker rehydration

-- change stone furnace to take bricks, and more of them
RECIPE("furnace"):replace_ingredient("stone", "stone-brick", 8)


RECIPE{
  name = "handcraft-wet-brick",
  enabled = true,
  energy_required = 4,
  ingredients = {
    { type = "item", name = "soil", amount = 4 },
  },
  results = {

  },
  main_product = "wet-brick"
}
RECIPE{
  name = "wet-brick",
  enabled = true,
  energy_required = 8,
  ingredients = {

  },
  results = {

  },
  main_product = "wet-brick"
}