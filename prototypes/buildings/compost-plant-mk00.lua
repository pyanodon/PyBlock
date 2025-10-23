RECIPE {
  type = "recipe",
  name = "compost-plant-mk00",
  energy_required = 0.5,
  enabled = false,
  ingredients = {
    {type = "item", name = "boiler",          amount = 2},
    {type = "item", name = "steel-plate",     amount = 20},
    {type = "item", name = "iron-gear-wheel", amount = 10},
    {type = "item", name = "steam-engine",    amount = 2},
  },
  results = {
    {type = "item", name = "compost-plant-mk00", amount = 1}
  }
}:add_unlock("compost")

ITEM {
  type = "item",
  name = "compost-plant-mk00",
  icon = "__PyBlock__/graphics/icons/compost-plant-mk00.png",
  icon_size = 64,
  flags = {},
  subgroup = "py-alienlife-buildings-mk00",
  order = "d",
  place_result = "compost-plant-mk00",
  stack_size = 10
}

require "make_copy" ("compost-plant"):set_fields{
  energy_source = {
    type = "fluid",
    effectivity = 0.5,
    emissions = 1,
    fluid_box = {
      volume = 200,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        {flow_direction = "input-output", position = {-5, 1}, direction = 12},
        {flow_direction = "input-output", position = {5, 1},  direction = 4},
      },
      filter = "steam",
      production_type = "input-output",
    },
    scale_fluid_usage = true,
  },
  energy_usage = "450kW",
  source_inventory_size = 1,
  result_inventory_size = 1
}