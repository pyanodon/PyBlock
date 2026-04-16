RECIPE {
    type = "recipe",
    name = "botanical-nursery-mk00",
    energy_required = 0.5,
    enabled = true,
    ingredients = {
        {type = "item", name = "soil-extractor-mk00", amount = 1},
        {type = "item", name = "soil",                amount = 25},
        {type = "item", name = "stone-brick",         amount = 15},
        {type = "item", name = "inductor1",           amount = 2},
        {type = "item", name = "iron-gear-wheel",     amount = 5},
        {type = "item", name = "iron-plate",          amount = 20},
    },
    results = {
        {type = "item", name = "botanical-nursery-mk00", amount = 1}
    }
}:add_unlock("wood-processing-0")

ITEM {
  type = "item",
  name = "botanical-nursery-mk00",
  icon = "__PyBlock__/graphics/icons/botanical-nursery-mk00.png",
  flags = {},
  subgroup = "py-alienlife-buildings-mk00",
  order = "b",
  place_result = "botanical-nursery-mk00",
  stack_size = 10
}

local pipes = {
    north = {
        filename = "__pycoalprocessinggraphics__/graphics/entity/botanical-nursery/top.png",
        priority = "low",
        width = 260,
        height = 254
    },
    south = {
        filename = "__pycoalprocessinggraphics__/graphics/entity/botanical-nursery/bottom.png",
        priority = "extra-high",
        width = 260,
        height = 254
    },
    west = {
        filename = "__pycoalprocessinggraphics__/graphics/entity/botanical-nursery/left.png",
        priority = "very-low",
        width = 260,
        height = 254
    },
    east = {
        filename = "__pycoalprocessinggraphics__/graphics/entity/botanical-nursery/right.png",
        priority = "extra-high",
        width = 260,
        height = 254
    }
}

require "make_copy" ("botanical-nursery"):set_fields{
  energy_usage = "110kW",
  energy_source = {
    type = "fluid",
    effectivity = 0.5,
    fluid_box = {
      volume = 200,
      pipe_covers = py.pipe_covers(false, true, true, true),
      pipe_picture = py.pipe_pictures("assembling-machine-3", {0.2, 4.13}, {0.12, -4.03}, {4.115, 0.1}, {-3.88, 0.16}, pipes),
      pipe_connections = {{flow_direction = "input", position = {-3.0, 0.0}, direction = defines.direction.west}},
      filter = "steam"
    },
    minimum_temperature = 250,
    scale_fluid_usage = true
  }
}