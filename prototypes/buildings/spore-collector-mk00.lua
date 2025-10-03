RECIPE {
  type = "recipe",
  name = "spore-collector-mk00",
  energy_required = 1,
  enabled = false,
  ingredients = {
    {type = "item", name = "stone-brick", amount = 50},
    {type = "item", name = "iron-gear-wheel", amount = 20},
    {type = "item", name = "iron-plate", amount = 20}
  },
  results = {
    {type = "item", name = "spore-collector-mk00", amount = 1}
  }
}:add_unlock("fawogae-mk00")

ITEM {
  type = "item",
  name = "spore-collector-mk00",
  icon = "__PyBlock__/graphics/icons/spore-collector-mk00.png",
  icon_size = 32,
  flags = {},
  subgroup = "py-alienlife-buildings-mk00",
  order = "e",
  place_result = "spore-collector-mk00",
  stack_size = 10
}

require "make_copy" ("spore-collector"):set_fields{
  energy_usage = "12kW",
  energy_source = {
    type = "fluid",
    fluid_box = {
      volume = 10,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        {flow_direction = "input-output",   position = {-3, 0}, direction = 12},
        {flow_direction = "input-output", position = {3, 0},  direction = 4},
      },
      filter = "steam",
    },
    minimum_temperature = 250,
    scale_fluid_usage = true
  }
}