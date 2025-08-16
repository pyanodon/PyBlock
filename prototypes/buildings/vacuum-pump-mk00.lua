RECIPE {
    type = "recipe",
    name = "vacuum-pump-mk00",
    energy_required = 1,
    enabled = true,
    ingredients = {
        {type = "item", name = "iron-plate",      amount = 5},
        {type = "item", name = "iron-gear-wheel", amount = 1},
        {type = "item", name = "pipe",            amount = 1}
    },
    results = {
        {type = "item", name = "vacuum-pump-mk00", amount = 1}
    }
}

ITEM {
    type = "item",
    name = "vacuum-pump-mk00",
    icon = "__PyBlock__/graphics/icons/vacuum-pump-mk00.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk00",
    order = "c",
    place_result = "vacuum-pump-mk00",
    stack_size = 10
}

require "make_copy" ("vacuum-pump"):set_fields{
  crafting_categories = {"vacuum-pump-mk00"},
  energy_source = {
    type = "burner",
    fuel_categories = {"chemical", "biomass"},
    effectivity = 1,
    fuel_inventory_size = 1,
    burnt_inventory_size = 1,
    emissions = 0.01,
    smoke = {
      {
        name = "smoke",
        deviation = {0.1, 0.1},
        frequency = 5,
        position = {0.0, -0.8},
        starting_vertical_speed = 0.08,
        starting_frame_deviation = 60
      }
    }
  },
  energy_usage = "50kW"
}

