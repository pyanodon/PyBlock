RECIPE {
  type = "recipe",
  name = "solid-separator-mk00",
  energy_required = 0.5,
  enabled = false,
  ingredients = {
    {type = "item", name = "steam-engine",       amount = 1},
    {type = "item", name = "iron-plate",         amount = 20},
    {type = "item", name = "stone-brick",        amount = 10},
    {type = "item", name = "iron-gear-wheel",    amount = 10}
  },
  results = {
    {type = "item", name = "solid-separator-mk00", amount = 1}
  }
}:add_unlock("ash-separation")

ITEM {
  type = "item",
  name = "solid-separator-mk00",
  icon = "__PyBlock__/graphics/icons/solid-separator-mk00.png",
  icon_size = 64,
  flags = {},
  subgroup = "py-cp-buildings-mk00",
  order = "x",
  place_result = "solid-separator-mk00",
  stack_size = 10
}

RECIPE("solid-separator"):replace_unlock("ash-separation", "steel-processing"):add_ingredient {type = "item", name = "solid-separator-mk00", amount = 1}:add_ingredient_amount("small-parts-01", -20):add_ingredient_amount("steel-plate", -10):add_ingredient_amount("inductor1", -5)

require "make_copy" ("solid-separator"):set_fields{
  energy_source = {
    type = "fluid",
    effectivity = 1,
    emissions = 1,
    fluid_box = {
      volume = 200,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { flow_direction = "input-output", direction = 12, position = { -2.95, 0 } },
        { flow_direction = "input-output", direction = 4, position = { 2.95, 0 } },
      },
      filter = "steam"
    },
    scale_fluid_usage = true
  },
  energy_usage = "800kW"
}