RECIPE {
  type = "recipe",
  name = "atomizer-mk00",
  energy_required = 0.5,
  enabled = false,
  ingredients = {
    -- {type = "item", name = "washer-mk00",  amount = 1},
    {type = "item", name = "iron-plate",   amount = 15},
    {type = "item", name = "copper-plate", amount = 20},
    {type = "item", name = "pipe",         amount = 10}
  },
  results = {
    {type = "item", name = "atomizer-mk00", amount = 1}
  }
}:add_unlock("atomizer-mk00")

ITEM {
  type = "item",
  name = "atomizer-mk00",
  icon = "__PyBlock__/graphics/icons/atomizer-mk00.png",
  icon_size = 64,
  flags = {},
  subgroup = "py-alienlife-buildings-mk00",
  order = "a",
  place_result = "atomizer-mk00",
  stack_size = 10
}

RECIPE("atomizer-mk01"):remove_ingredient("washer"):add_ingredient {type = "item", name = "atomizer-mk00", amount = 1}

require "make_copy" ("atomizer"):set_fields{
  energy_source = {
    type = "burner",
    fuel_categories = {"chemical", "biomass"},
    effectivity = 1,
    fuel_inventory_size = 1,
    burnt_inventory_size = 1,
    emissions_per_minute = {pollution = 0.06}
  },
  energy_usage = "700kW"
}