RECIPE {
  type = "recipe",
  name = "compost-plant-mk00",
  energy_required = 0.5,
  enabled = false,
  ingredients = {
    {"boiler", 2},
    {"steel-plate", 20},
    {"iron-gear-wheel", 10},
    {"steam-engine", 2},
  },
  results = {
    {"compost-plant-mk00", 1}
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

ENTITY {
  type = "furnace",
  name = "compost-plant-mk00",
  icon = "__PyBlock__/graphics/icons/compost-plant-mk00.png",
  icon_size = 64,
  flags = {"placeable-neutral", "player-creation"},
  minable = {mining_time = 0.5, result = "compost-plant-mk00"},
  fast_replaceable_group = "compost-plant",
  max_health = 300,
  corpse = "big-remnants",
  dying_explosion = "big-explosion",
  collision_box = {{-5.2, -5.2}, {5.2, 5.2}},
  selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
  draw_entity_info_icon_background = false,
  match_animation_speed_to_activity = false,
  module_specification = {
    module_slots = 1
  },
  allowed_effects = {"speed","consumption"},
  crafting_categories = {"compost"},
  crafting_speed = 0.5,
  source_inventory_size = 1,
  result_inventory_size = 1,
  energy_source = {
    type = "fluid",
    effectivity = 1,
    emissions = 1,
    fluid_box = {
      volume = 200,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { flow_direction = "input-output", position = {-5.2,1}, direction = 12 },
        { flow_direction = "input-output", position = {5.2, 1}, direction = 4 },
        -- direction = 0,
      },
      filter = "steam",
      production_type = "input-output",
    },
    scale_fluid_usage = true,
  },
  energy_usage = "300kW",
  graphics_set = {
    animation = {
      layers = {
        {
          filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/bottom.png",
          width = 384,
          height = 32,
          frame_count = 1,
          line_length = 1,
          shift = util.by_pixel(16, 160)
        },
        {
          filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/off.png",
          width = 384,
          height = 512,
          frame_count = 1,
          line_length = 1,
          shift = util.by_pixel(16, -112)
        },
        {
          filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/off-mask.png",
          width = 384,
          height = 512,
          frame_count = 1,
          line_length = 1,
          shift = util.by_pixel(16, -112),
          tint = {r = 0.5, g = 0.5, b = 0.5, a = 1.0}
        },
      },
    },
    working_visualisations = {
      {
        north_position = util.by_pixel(-144, -112),
        west_position = util.by_pixel(-144, -112),
        south_position = util.by_pixel(-144, -112),
        east_position = util.by_pixel(-144, -112),
        animation = {
          filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a1.png",
          frame_count = 100,
          line_length = 32,
          width = 64,
          height = 512,
          animation_speed = 0.4
        }
      },
      {
        north_position = util.by_pixel(-144, -112),
        west_position = util.by_pixel(-144, -112),
        south_position = util.by_pixel(-144, -112),
        east_position = util.by_pixel(-144, -112),
        animation = {
          filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a1-mask.png",
          frame_count = 100,
          line_length = 32,
          width = 64,
          height = 512,
          animation_speed = 0.4,
          tint = {r = 0.5, g = 0.5, b = 0.5, a = 1.0}
        }
      },
      {
        north_position = util.by_pixel(-80, -112),
        west_position = util.by_pixel(-80, -112),
        south_position = util.by_pixel(-80, -112),
        east_position = util.by_pixel(-80, -112),
        animation = {
          filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a2.png",
          frame_count = 100,
          line_length = 32,
          width = 64,
          height = 512,
          animation_speed = 0.4
        }
      },
      {
        north_position = util.by_pixel(-80, -112),
        west_position = util.by_pixel(-80, -112),
        south_position = util.by_pixel(-80, -112),
        east_position = util.by_pixel(-80, -112),
        animation = {
          filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a2-mask.png",
          frame_count = 100,
          line_length = 32,
          width = 64,
          height = 512,
          animation_speed = 0.4,
          tint = {r = 0.5, g = 0.5, b = 0.5, a = 1.0}
        }
      },
      {
        north_position = util.by_pixel(-16, -112),
        west_position = util.by_pixel(-16, -112),
        south_position = util.by_pixel(-16, -112),
        east_position = util.by_pixel(-16, -112),
        animation = {
          filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a3.png",
          frame_count = 100,
          line_length = 32,
          width = 64,
          height = 512,
          animation_speed = 0.4
        }
      },
      {
        north_position = util.by_pixel(-16, -112),
        west_position = util.by_pixel(-16, -112),
        south_position = util.by_pixel(-16, -112),
        east_position = util.by_pixel(-16, -112),
        animation = {
          filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a3-mask.png",
          frame_count = 100,
          line_length = 32,
          width = 64,
          height = 512,
          animation_speed = 0.4,
          tint = {r = 0.5, g = 0.5, b = 0.5, a = 1.0}
        }
      },
      {
        north_position = util.by_pixel(48, -112),
        west_position = util.by_pixel(48, -112),
        south_position = util.by_pixel(48, -112),
        east_position = util.by_pixel(48, -112),
        animation = {
          filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a4.png",
          frame_count = 100,
          line_length = 32,
          width = 64,
          height = 512,
          animation_speed = 0.4
        }
      },
      {
        north_position = util.by_pixel(48, -112),
        west_position = util.by_pixel(48, -112),
        south_position = util.by_pixel(48, -112),
        east_position = util.by_pixel(48, -112),
        animation = {
          filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a4-mask.png",
          frame_count = 100,
          line_length = 32,
          width = 64,
          height = 512,
          animation_speed = 0.4,
          tint = {r = 0.5, g = 0.5, b = 0.5, a = 1.0}
        }
      },
      {
        north_position = util.by_pixel(112, -112),
        west_position = util.by_pixel(112, -112),
        south_position = util.by_pixel(112, -112),
        east_position = util.by_pixel(112, -112),
        animation = {
          filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a5.png",
          frame_count = 100,
          line_length = 32,
          width = 64,
          height = 512,
          animation_speed = 0.4
        }
      },
      {
        north_position = util.by_pixel(112, -112),
        west_position = util.by_pixel(112, -112),
        south_position = util.by_pixel(112, -112),
        east_position = util.by_pixel(112, -112),
        animation = {
          filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a5-mask.png",
          frame_count = 100,
          line_length = 32,
          width = 64,
          height = 512,
          animation_speed = 0.4,
          tint = {r = 0.5, g = 0.5, b = 0.5, a = 1.0}
        }
      },
    }
  },
  vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
  working_sound = {
    sound = {filename = "__pyalienlifegraphics3__/sounds/compost-plant.ogg", volume = 1.2},
    idle_sound = {filename = "__pyalienlifegraphics3__/sounds/compost-plant.ogg", volume = 0.75},
    apparent_volume = 0.45
  }
}
