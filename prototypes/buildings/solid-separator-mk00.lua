RECIPE {
  type = "recipe",
  name = "solid-separator-mk00",
  energy_required = 0.5,
  enabled = false,
  ingredients = {
    {type = "item", name = "steam-engine",       amount = 1},
    {type = "item", name = "iron-plate",         amount = 20},
    {type = "item", name = "stone-brick",        amount = 10},
    {type = "item", name = "iron-gear-wheel",    amount = 10}
  },
  results = {
    {type = "item", name = "solid-separator-mk00", amount = 1}
  }
}:add_unlock("ash-separation")

ITEM {
  type = "item",
  name = "solid-separator-mk00",
  icon = "__PyBlock__/graphics/icons/solid-separator-mk00.png",
  icon_size = 64,
  flags = {},
  subgroup = "py-cp-buildings-mk00",
  order = "x",
  place_result = "solid-separator-mk00",
  stack_size = 10
}

-- require "make_copy" ("solid-separator"):set_fields{
--   energy_source = {
--     type = "fluid",
--     effectivity = 1,
--     emissions = 1,
--     fluid_box = {
--       volume = 200,
--       pipe_covers = pipecoverspictures(),
--       pipe_connections = {
--         { flow_direction = "input-output", direction = 12, position = { -2.95, 0 } },
--         { flow_direction = "input-output", direction = 4, position = { 2.95, 0 } },
--       },
--       filter = "steam"
--     },
--     scale_fluid_usage = true
--   },
--   energy_usage = "800kW"
-- }

ENTITY {
  type = "assembling-machine",
  name = "solid-separator-mk00",
  icon = "__PyBlock__/graphics/icons/solid-separator-mk00.png",
  icon_size = 64,
  flags = {"placeable-neutral", "player-creation"},
  minable = {mining_time = 1, result = "solid-separator-mk00"},
  fast_replaceable_group = "solid-separator",
  max_health = 200,
  corpse = "big-remnants",
  dying_explosion = "medium-explosion",
  collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
  selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
  module_slots = 0,
  crafting_categories = {"solid-separator"},
  crafting_speed = 0.5,
  energy_source = {
    type = "fluid",
    effectivity = 0.5,
    emissions = 1,
    fluid_box = {
      volume = 200,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { flow_direction = "input-output", direction = 12, position = { -2.95, 0 } },
        { flow_direction = "input-output", direction = 4, position = { 2.95, 0 } },
      },
      filter = "steam"
    },
    scale_fluid_usage = true
  },
  energy_usage = "1200kW",
  graphics_set = {
    animation = {
      layers = {
        {
          filename = "__pycoalprocessinggraphics__/graphics/entity/solid-separator/solid-separator.png",
          width = 249,
          height = 298,
          frame_count = 20,
          line_length = 5,
          animation_speed = 1,
          shift = {0.37, -1.169}
        },
        {
          filename = "__pycoalprocessinggraphics__/graphics/entity/solid-separator/solid-separator-mask.png",
          width = 249,
          height = 298,
          frame_count = 20,
          line_length = 5,
          animation_speed = 1,
          shift = {0.37, -1.169},
          tint = {r = 0.5, g = 0.5, b = 0.5, a = 1.0}
        }
      }
    }
  },
  impact_category = "metal",
  working_sound = {
    sound = {filename = "__pycoalprocessinggraphics__/sounds/solid-separator.ogg"},
    idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/solid-separator.ogg", volume = 0.3},
    apparent_volume = 2.5
  },
  next_upgrade = "solid-separator"
}