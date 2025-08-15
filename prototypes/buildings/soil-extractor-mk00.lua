RECIPE {
  type = "recipe",
  name = "soil-extractor-mk00",
  energy_required = 6,
  enabled = false,
  ingredients = {
    {type = "item", name = "burner-mining-drill", amount = 2},
    {type = "item", name = "iron-plate",          amount = 15},
    {type = "item", name = "copper-cable",        amount = 5},
    {type = "item", name = "iron-gear-wheel",     amount = 5}
  },
  results = {
    {type = "item", name = "soil-extractor-mk00", amount = 1}
  }
}:add_unlock("automation-science-pack")

ITEM {
  type = "item",
  name = "soil-extractor-mk00",
  icon = "__PyBlock__/graphics/icons/soil-extractor-mk00.png",
  icon_size = 64,
  flags = {},
  subgroup = "py-cp-buildings-mk00",
  order = "g",
  place_result = "soil-extractor-mk00",
  stack_size = 10
}

require "make_copy" ("soil-extractor"):set_fields{
  energy_source = {
    type = "fluid",
    effectivity = 1,
    emissions = 1,
    fluid_box = {
      volume = 200,
      pipe_covers = py.pipe_covers(true, true, true, true),
      pipe_picture = py.pipe_pictures("assembling-machine-3", {0, 1}, {0, -1}, nil, nil, {
        north = {
          filename = "__pycoalprocessinggraphics__/graphics/entity/soil-extractor/long-pipe-north.png",
          priority = "low",
          width = 30,
          height = 44
        },
        south = {
          filename = "__pycoalprocessinggraphics__/graphics/entity/soil-extractor/pipe-south.png",
          priority = "extra-high",
          width = 40,
          height = 45
        }
      }),
      pipe_connections = {{flow_direction = "input", position = {0, -3}, direction = 0}},
      production_type = "input-output",
      filter = "steam",
    },
    scale_fluid_usage = true,
  },
  energy_usage = "200kW"
}