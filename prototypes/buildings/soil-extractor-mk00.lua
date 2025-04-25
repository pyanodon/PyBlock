RECIPE {
  type = "recipe",
  name = "soil-extractor-mk00",
  energy_required = 6,
  enabled = true,
  ingredients = {
    {type = "item", name = "burner-mining-drill", amount = 2},
    {type = "item", name = "iron-plate",          amount = 15},
    {type = "item", name = "copper-cable",        amount = 5},
    {type = "item", name = "iron-gear-wheel",     amount = 5}
  },
  results = {
    {type = "item", name = "soil-extractor-mk00", amount = 1}
  }
}

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

ENTITY {
  type = "assembling-machine",
  name = "soil-extractor-mk00",
  icon = "__PyBlock__/graphics/icons/soil-extractor-mk00.png",
  icon_size = 64,
  flags = {"placeable-neutral", "player-creation"},
  minable = {mining_time = 1, result = "soil-extractor-mk00"},
  fast_replaceable_group = "soil-extractor",
  max_health = 300,
  corpse = "big-remnants",
  dying_explosion = "medium-explosion",
  collision_box = data.raw["assembling-machine"]["soil-extractor-mk01"].collision_box,
  selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
  vector_to_place_result = {0, 3.51},
  module_slots = 0,
  crafting_categories = {"soil-extraction"},
  crafting_speed = 0.5,
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
  energy_usage = "200kW",
  graphics_set = {
    animation = {
      layers = {
        {
          filename = "__pycoalprocessinggraphics__/graphics/entity/soil-extractor/soil-extractor.png",
          width = 235,
          height = 266,
          frame_count = 30,
          line_length = 6,
          animation_speed = 0.8,
          shift = {0.16, -0.609}
        },
        {
          filename = "__pycoalprocessinggraphics__/graphics/entity/soil-extractor/soil-extractor-mask.png",
          width = 235,
          height = 266,
          frame_count = 30,
          line_length = 6,
          animation_speed = 0.8,
          shift = {0.16, -0.609},
          tint = {r = 0.5, g = 0.5, b = 0.5, a = 1.0}
        }
      }
    },
  },
  fluid_boxes = {
    {
      production_type = "input",
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
      volume = 100,
      pipe_connections = {
        {flow_direction = "input-output", position = {3, 0},  direction = 4},
        {flow_direction = "input-output", position = {-3, 0}, direction = 12},
      }
    }
  },
  vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
  working_sound = {
    sound = {filename = "__pycoalprocessinggraphics__/sounds/soil-extractor.ogg"},
    idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/soil-extractor.ogg", volume = 0.45},
    apparent_volume = 2.5
  },
  next_upgrade = "soil-extractor-mk01"
}
