RECIPE {
  type = "recipe",
  name = "slaughterhouse-mk00",
  energy_required = 1,
  enabled = false,
  ingredients = {
    {type = "item", name = "stone-brick",     amount = 30},
    {type = "item", name = "pipe",            amount = 20},
    {type = "item", name = "inductor1",       amount = 1},
    {type = "item", name = "iron-gear-wheel", amount = 30},
    {type = "item", name = "iron-plate",      amount = 30},
    {type = "item", name = "steel-plate",     amount = 10},
    {type = "item", name = "glass",           amount = 10},
  },
  results = {
    {type = "item", name = "slaughterhouse-mk00", amount = 1}
  }
}:add_unlock("water-animals-mk01")

ITEM {
  type = "item",
  name = "slaughterhouse-mk00",
  icon = "__PyBlock__/graphics/icons/slaughterhouse-mk00.png",
  icon_size = 64,
  flags = {},
  subgroup = "py-alienlife-buildings-mk00",
  order = "a",
  place_result = "slaughterhouse-mk00",
  stack_size = 10
}

RECIPE("slaughterhouse-mk01"):add_ingredient {type = "item", name = "slaughterhouse-mk00", amount = 1}

require "make_copy" ("slaughterhouse"):set_fields{
  energy_source = {
    type = "fluid",
    effectivity = 1,
    emissions = 1,
    fluid_box = {
      volume = 200,
      pipe_covers = py.pipe_covers(true, true, true, true),
      pipe_connections = {
        {flow_direction = "input-output", position = {5, 2},  direction = 4},
        {flow_direction = "input-output", position = {-5, 2}, direction = 12},
      },
      production_type = "input-output",
      filter = "steam",
    },
    scale_fluid_usage = true,
  },
  energy_usage = "150kW"
}