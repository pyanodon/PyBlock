RECIPE {
  type = "recipe",
  name = "automated-screener-mk00",
  energy_required = 10,
  enabled = false,
  ingredients = {
    {type = "item", name = "iron-plate",      amount = 40},
    {type = "item", name = "iron-gear-wheel", amount = 10},
    {type = "item", name = "stone-brick",     amount = 16}
  },
  results = {
    {type = "item", name = "automated-screener-mk00", amount = 1}
  }
}:add_unlock("glass")

ITEM {
  type = "item",
  name = "automated-screener-mk00",
  icon = "__PyBlock__/graphics/icons/automated-screener-mk00.png",
  icon_size = 64,
  flags = {},
  subgroup = "py-fusion-buildings-mk00",
  order = "d",
  place_result = "automated-screener-mk00",
  stack_size = 10
}

ENTITY {
  type = "assembling-machine",
  name = "automated-screener-mk00",
  icon = "__PyBlock__/graphics/icons/automated-screener-mk00.png",
  icon_size = 64,
  flags = {"placeable-neutral", "player-creation"},
  minable = {mining_time = 0.5, result = "automated-screener-mk00"},
  fast_replaceable_group = "automated-screener",
  max_health = 700,
  corpse = "big-remnants",
  dying_explosion = "big-explosion",
  collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
  selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
  match_animation_speed_to_activity = false,
  module_slots = 0,
  crafting_categories = {"screener"},
  crafting_speed = 0.5,
  energy_source =
  {
    type = "burner",
    fuel_categories = {"chemical", "biomass"},
    effectivity = 1,
    fuel_inventory_size = 1,
    burnt_inventory_size = 1,
    emissions_per_minute = {pollution = 0.06}
  },
  energy_usage = "80kW",
  graphics_set = {
    animation = {
      layers = {
        {
          filename = "__pyfusionenergygraphics__/graphics/entity/automated-screener/left.png",
          width = 96,
          height = 256,
          line_length = 21,
          frame_count = 150,
          animation_speed = 0.4,
          shift = {-2.032, -0.5}
        },
        {
          filename = "__pyfusionenergygraphics__/graphics/entity/automated-screener/left-mask.png",
          width = 96,
          height = 256,
          line_length = 21,
          frame_count = 150,
          animation_speed = 0.4,
          shift = {-2.032, -0.5},
          tint = {r = 0.5, g = 0.5, b = 0.5, a = 1.0}
        },
        {
          filename = "__pyfusionenergygraphics__/graphics/entity/automated-screener/mid.png",
          width = 96,
          height = 256,
          line_length = 21,
          frame_count = 150,
          animation_speed = 0.4,
          shift = {0.968, -0.5}
        },
        {
          filename = "__pyfusionenergygraphics__/graphics/entity/automated-screener/mid-mask.png",
          width = 96,
          height = 256,
          line_length = 21,
          frame_count = 150,
          animation_speed = 0.4,
          shift = {0.968, -0.5},
          tint = {r = 0.5, g = 0.5, b = 0.5, a = 1.0}
        },
        {
          filename = "__pyfusionenergygraphics__/graphics/entity/automated-screener/right.png",
          width = 38,
          height = 256,
          line_length = 21,
          frame_count = 150,
          animation_speed = 0.4,
          shift = {3.032, -0.5}
        },
        {
          filename = "__pyfusionenergygraphics__/graphics/entity/automated-screener/right-mask.png",
          width = 38,
          height = 256,
          line_length = 21,
          frame_count = 150,
          animation_speed = 0.4,
          shift = {3.032, -0.5},
          tint = {r = 0.5, g = 0.5, b = 0.5, a = 1.0}
        }
      }
    },
  },
  vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
  working_sound = {
    sound = {filename = "__pyfusionenergygraphics__/sounds/automated-screener.ogg", volume = 1.3},
    idle_sound = {filename = "__pyfusionenergygraphics__/sounds/automated-screener.ogg", volume = 0.95},
    apparent_volume = 2.5
  },
  next_upgrade = "automated-screener-mk01"
}
