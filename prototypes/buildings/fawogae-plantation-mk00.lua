RECIPE {
  type = "recipe",
  name = "fawogae-plantation-mk00",
  energy_required = 1,
  enabled = false,
  ingredients = {
    {type = "item", name = "wood", amount = 10},
    {type = "item", name = "soil", amount = 100},
    {type = "item", name = "iron-plate", amount = 5}
  },
  results = {
    {type = "item", name = "fawogae-plantation-mk00", amount = 1}
  }
}:add_unlock("fawogae-mk00")

ITEM {
  type = "item",
  name = "fawogae-plantation-mk00",
  icon = "__PyBlock__/graphics/icons/fawogae-plantation-mk00.png",
  icon_size = 64,
  flags = {},
  subgroup = "py-alienlife-buildings-mk00",
  order = "e",
  place_result = "fawogae-plantation-mk00",
  stack_size = 10
}

require "make_copy" ("fawogae-plantation"):set_fields{
  crafting_speed = data.raw["assembling-machine"]["fawogae-plantation-mk01"].crafting_speed * 0.2,
  energy_usage = "30kW",
  energy_source = {
    type = "fluid",
    fluid_box = {
      volume = 10,
      pipe_covers = py.pipe_covers(false, true, true, true),
      pipe_picture = data.raw["assembling-machine"]["fawogae-plantation-mk01"].fluid_boxes[1].pipe_picture,
      pipe_connections = {
        {flow_direction = "input-output", position = {-2.5, 0.5}, direction = defines.direction.west},
        {flow_direction = "input-output", position = {2.5, -0.5}, direction = defines.direction.east}
      },
      filter = "steam"
    },
    minimum_temperature = 250,
    scale_fluid_usage = true
  },
  fluid_boxes = {},
  allowed_module_categories = {"fawogae"}
}