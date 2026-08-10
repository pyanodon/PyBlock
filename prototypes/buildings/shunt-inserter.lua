---@diagnostic disable: param-type-mismatch
RECIPE {
  type = "recipe",
  name = "shunt-inserter",
  energy_required = 0.5,
  enabled = false,
  ingredients = {
    {type = "item", name = "pipe",            amount = 2},
    {type = "item", name = "iron-gear-wheel", amount = 1},
    {type = "item", name = "iron-plate",      amount = 2},
  },
  results = {
    {type = "item", name = "shunt-inserter", amount = 1}
  }
}:add_unlock("atomizer-mk00")

local icons = {
    {
      icon = table.deepcopy(data.raw.item["burner-inserter"].icon),
      icon_size = 64,
      tint = {0.75, 0.75, 0.75, 1}
    },
    {
      icon = data.raw.fluid["steam"].icon,
      icon_size = 64,
      shift = {-8, 8},
      scale = 0.25
    }
}

ITEM {
  type = "item",
  name = "shunt-inserter",
  icons = icons,
  flags = {},
  subgroup = "inserter",
  order = "a[shunt-inserter]",
  place_result = "shunt-inserter",
  stack_size = 50
}

require("__base__.prototypes.entity.pipecovers")
local item_sounds = require("__base__.prototypes.item_sounds")
local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

local function steam_inserter_pipe_straight()
  return {
    north = {
      filename = "__PyBlock__/graphics/entity/shunt-inserter/pipe-inserter-base-2-directions-vertical.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      shift = util.by_pixel(0, 32),
      scale = 0.5,
    },
    west = {
      filename = "__PyBlock__/graphics/entity/shunt-inserter/pipe-inserter-base-2-directions-horizontal.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      shift = util.by_pixel(32, 0),
      scale = 0.5,
    },
    south = util.empty_sprite(),
    east = util.empty_sprite(),
  }
end

local function steam_inserter_pipe_cross()
  return {
    north = {
      filename = "__PyBlock__/graphics/entity/shunt-inserter/pipe-inserter-base-4-directions.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      shift = util.by_pixel(0, 32),
      scale = 0.5,
    },
    west = {
      filename = "__PyBlock__/graphics/entity/shunt-inserter/pipe-inserter-base-4-directions.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      shift = util.by_pixel(32, 0),
      scale = 0.5,
    },
    south = util.empty_sprite(),
    east = util.empty_sprite(),
  }
end

ENTITY {
    type = "inserter",
    name = "shunt-inserter",
    icons = icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation" },
    minable = {mining_time = 0.1, result = "shunt-inserter"},
    max_health = 150,
    corpse = "shunt-inserter-remnants",
    dying_explosion = "inserter-explosion",
    collision_box = {{-0.289063, -0.289063}, {0.289063, 0.289063}},
    selection_box = {{-0.398438, -0.398438}, {0.398438, 0.398438}},
    damaged_trigger_effect = hit_effects.entity(),
    energy_source = {
      type = "fluid",
      burns_fluid = false,
      scale_fluid_usage = true,
      fluid_box = {
        volume = 20,
        pipe_covers = py.pipe_covers(true, true, true, true),
        pipe_picture = steam_inserter_pipe_straight(),
        always_draw_covers = false,
        pipe_connections = {
          {direction = defines.direction.east, position = {0, 0}},
          {direction = defines.direction.west, position = {0, 0}},
        },
        production_type = "input-output",
        filter = "steam",
        volume_reservation_fraction = 0.2
      },
      smoke = {
        {
          name = "smoke",
          frequency = 3,
          position = {0, 0},
          starting_vertical_speed = 0.1,
          starting_frame_deviation = 60,
        },
      },
    },
    extension_speed = 0.035,
    rotation_speed = 0.0175,
    insert_position = {0, 1.2},
    pickup_position = {0, -1},
    energy_per_movement = "10kW",
    energy_per_rotation = "10kW",
    filter_count = 1,
    platform_picture = util.empty_sprite(),
    hand_base_picture = {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base.png",
      priority = "extra-high",
      width = 32,
      height = 136,
      scale = 0.25,
    },
    hand_open_picture = {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25,
    },
    hand_closed_picture = {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25,
    },
    hand_base_shadow = {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 32,
      height = 132,
      scale = 0.25,
    },
    hand_open_shadow = {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25,
    },
    hand_closed_shadow = {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25,
    },
    icon_draw_specification = {
      shift = {0.25, -0.25},
      render_layer = "entity-info-icon-above",
      scale = 0.4,
    },
    fast_replaceable_group = "inserter",
    impact_category = "metal",
    open_sound = sounds.inserter_open,
    close_sound = sounds.inserter_close,
    working_sound = sounds.inserter_fast,
    circuit_connector = circuit_connector_definitions["inserter"],
    circuit_wire_max_distance = inserter_circuit_wire_max_distance,
    default_stack_control_input_signal = inserter_default_stack_control_input_signal,
}

data:extend{
  {
    type = "corpse",
    name = "shunt-inserter-remnants",
    icons = icons,
    flags = {"placeable-neutral", "not-on-map" },
    subgroup = "inserter-remnants",
    order = "a-d-a",
    selection_box = {{-0.5, -0.5}, {0.5, 0.5} },
    tile_width = 1,
    tile_height = 1,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15,
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = {
      width = 128,
      height = 128,
      direction_count = 4,
      stripes = {
        {
          filename = "__PyBlock__/graphics/entity/shunt-inserter/pipe-inserter-base-2-directions-horizontal-remnants.png",
          width_in_frames = 1,
          height_in_frames = 1,
        },
        {
          filename = "__PyBlock__/graphics/entity/shunt-inserter/pipe-inserter-base-2-directions-vertical-remnants.png",
          width_in_frames = 1,
          height_in_frames = 1,
        },
        {
          filename = "__PyBlock__/graphics/entity/shunt-inserter/pipe-inserter-base-2-directions-horizontal-remnants.png",
          width_in_frames = 1,
          height_in_frames = 1,
        },
        {
          filename = "__PyBlock__/graphics/entity/shunt-inserter/pipe-inserter-base-2-directions-vertical-remnants.png",
          width_in_frames = 1,
          height_in_frames = 1,
        },
      },
      scale = 0.5
    }
  }
}
