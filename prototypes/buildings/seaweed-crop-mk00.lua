RECIPE {
  type = "recipe",
  name = "seaweed-crop-mk00",
  energy_required = 1,
  enabled = false,
  ingredients = {
    {type = "item", name = "stone-brick", amount = 20},
    {type = "item", name = "pipe", amount = 5},
    {type = "item", name = "iron-gear-wheel", amount = 5},
    {type = "item", name = "iron-plate", amount = 15}
  },
  results = {
    {type = "item", name = "seaweed-crop-mk00", amount = 1}
  }
}:add_unlock("seaweed-mk00")

ITEM {
  type = "item",
  name = "seaweed-crop-mk00",
  icon = "__PyBlock__/graphics/icons/seaweed-crop-mk00.png",
  icon_size = 64,
  flags = {},
  subgroup = "py-alienlife-buildings-mk00",
  order = "e",
  place_result = "seaweed-crop-mk00",
  stack_size = 10
}

require "make_copy" ("seaweed-crop"):set_fields{
  energy_usage = "204kW",
  energy_source = {
    type = "fluid",
    effectivity = 0.5,
    fluid_box = {
      volume = 200,
      pipe_covers = pipecoverspictures(),
      pipe_picture = py.sexy_pipe_pictures(),
      secondary_draw_orders = {north = -1, east = -1, west = -1},
      pipe_connections = {
        {flow_direction = "input-output", position = {6.0, -4.0}, direction = defines.direction.east},
        {flow_direction = "input-output", position = {-6.0, -4.0}, direction = defines.direction.west}
      },
      filter = "steam"
    },
    emissions_per_minute = {pollution = -10},
    minimum_temperature = 250,
    scale_fluid_usage = true
  },
  allowed_module_categories = {"seaweed"}
}