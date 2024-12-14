
RECIPE {
  type = "recipe",
  name = "wpu-mk00",
  energy_required = 5,
  enabled = true,
  ingredients = {
    {"log", 12},
    {"iron-plate", 20},
    {"iron-gear-wheel", 15},
    {"steam-engine", 1},
    {"stone-furnace", 1},
    {"copper-cable", 30}
  },
  results = {
    {"wpu-mk00", 1}
  }
}:add_unlock("automation-science-pack")

ITEM {
  type = "item",
  name = "wpu-mk00",
  icon = "__PyBlock__/graphics/icons/wpu-mk00.png",
  icon_size = 64,
  flags = {},
  subgroup = "py-cp-buildings-mk00",
  order = "c",
  place_result = "wpu-mk00",
  stack_size = 10
}

ENTITY {
  type = "assembling-machine",
  name = "wpu-mk00",
  icon = "__PyBlock__/graphics/icons/wpu-mk00.png",
  icon_size = 64,
  flags = {"placeable-neutral", "player-creation"},
  minable = {mining_time = 1, result = "wpu-mk00"},
  fast_replaceable_group = "wpu",
  max_health = 800,
  corpse = "medium-remnants",
  dying_explosion = "medium-explosion",
  collision_box = {{-2.8, -2.8}, {2.8, 2.8}},
  selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
  vector_to_place_result = {0, -3.01},
  module_specification = {
    module_slots = 0
  },
  allowed_effects = {"consumption", "speed", "productivity", "pollution"},
  crafting_categories = {"wpu", "wpu-handcrafting"},
  crafting_speed = 0.5,
  energy_source = {
    type = "fluid",
    effectivity = 1,
    emissions = 1,
    fluid_box = {
      volume = 200,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { flow_direction = "input-output", direction = 12, position = { -2.5, 0.5 } },
        { flow_direction = "input-output", direction = 4, position = { 2.5, 0.5 } },
      },
      filter = "steam",
      production_type = "input-output",
    },
    scale_fluid_usage = true,
  },
  energy_usage = "150kW",
  graphics_set = {
    animation = {
      layers = {
        {
          filename = "__pycoalprocessinggraphics__/graphics/entity/wpu/left.png",
          width = 96,
          height = 277,
          line_length = 21,
          frame_count = 130,
          shift = {-1.5, -1.328},
          animation_speed = 0.42
        },
        {
          filename = "__pycoalprocessinggraphics__/graphics/entity/wpu/right.png",
          width = 96,
          height = 277,
          line_length = 21,
          frame_count = 130,
          shift = {1.5, -1.328},
          animation_speed = 0.42
        },
        {
          filename = "__pycoalprocessinggraphics__/graphics/entity/wpu/left-mask.png",
          width = 96,
          height = 277,
          line_length = 21,
          frame_count = 130,
          shift = {-1.5, -1.328},
          animation_speed = 0.42,
          tint = {r = 0.5, g = 0.5, b = 0.5, a = 1.0}
        },
        {
          filename = "__pycoalprocessinggraphics__/graphics/entity/wpu/right-mask.png",
          width = 96,
          height = 277,
          line_length = 21,
          frame_count = 130,
          shift = {1.5, -1.328},
          animation_speed = 0.42,
          tint = {r = 0.5, g = 0.5, b = 0.5, a = 1.0}
        },
      }
    }
  },
  vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
  working_sound = {
    sound = {filename = "__pycoalprocessinggraphics__/sounds/wpu.ogg", volume = 1.0},
    idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/wpu.ogg", volume = 0.6},
    apparent_volume = 2.5
  },
  next_upgrade = "wpu"
}