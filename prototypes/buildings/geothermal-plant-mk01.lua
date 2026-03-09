data.raw["mining-drill"]["geothermal-plant-mk01"].graphics_set = nil
data.raw["mining-drill"]["geothermal-plant-mk01"].selection_box = nil
-- error(serpent.block(data.raw["mining-drill"]["geothermal-plant-mk01"].output_fluid_box))
data.raw["mining-drill"]["geothermal-plant-mk01"].output_fluid_box.pipe_connections[1].connection_type = "linked"
data.raw["mining-drill"]["geothermal-plant-mk01"].output_fluid_box.pipe_connections[1].linked_connection_id = 1
data.raw["mining-drill"]["geothermal-plant-mk01"].output_fluid_box.pipe_connections[1].flow_direction = "input-output"
ENTITY("geothermal-plant-mk01"):set_fields{
  selectable_in_game = false,
  selection_priority = 1,
  collision_mask = {layers = {}},
  -- output_fluid_box = {
  --   volume = 1000,
  --   production_type = "output",
  --   pipe_connections = {{flow_direction = "input-output", connection_type = "linked", linked_connection_id = 1}},
  --   production_type = "output",
  --   filter = "geothermal-water",
  -- },
  input_fluid_box = {
    volume = 200,
    production_type = "input",
    pipe_connections = {
      {flow_direction = "input-output", connection_type = "linked", linked_connection_id = 2}
    },
    filter = "pressured-water",
  },
  flags = {
    "placeable-neutral",
    "not-selectable-in-game",
    "no-copy-paste",
    "not-blueprintable",
    "not-deconstructable",
    "not-on-map",
    "not-repairable"
  }
}


ITEM("geothermal-plant-mk01").place_result = "geothermal-plant-mk01-silo"

ENTITY {
  type = "rocket-silo",
  name = "geothermal-plant-mk01-silo",
  icon = "__pyalternativeenergygraphics__/graphics/icons/geothermal-plant-mk01.png",
  icon_size = 64,
  flags = {"placeable-neutral", "player-creation"},
  minable = {mining_time = 0.5, result = "geothermal-plant-mk01"},
  max_health = 200,
  corpse = "big-remnants",
  dying_explosion = "big-explosion",
  collision_box = {{ -5.2, -5.2}, {5.2, 5.2}},
  selection_box = {{ -5.5, -5.5}, {5.5, 5.5}},
  crafting_categories = {"geowater"},
  rocket_parts_required = 5,
  crafting_speed = 1,
  to_be_inserted_to_rocket_inventory_size = 1,
  show_recipe_icon = false,
  show_recipe_icon_on_map = false,
  energy_source = {
    type = "electric",
    usage_priority = "secondary-input"
  },
  fluid_boxes_off_when_no_fluid_recipe = false,
  fluid_boxes = {
    {
      production_type = "output",
      pipe_picture = py.pipe_pictures("assembling-machine-2", {1.17, 2.78}, {-0.05, -0.8}, nil, nil, pipes2),
      pipe_covers = py.pipe_covers(true, true, true, true),
      volume = 100,
      pipe_connections = {
        { flow_direction = "input-output", position = {0, -5.2}, direction = defines.direction.north },
        { flow_direction = "input-output", connection_type = "linked", linked_connection_id = 1 },
      },
      filter = "geothermal-water"
    },
    {
      production_type = "output",
      pipe_picture = py.pipe_pictures("assembling-machine-2", {1.17, 2.78}, {-0.05, -0.8}, nil, nil, pipes2),
      pipe_covers = py.pipe_covers(true, true, true, true),
      volume = 100,
      pipe_connections = {
        { flow_direction = "input-output", position = {5.2, 0}, direction = defines.direction.east },
        { flow_direction = "input-output", position = {0, 5.2}, direction = defines.direction.south },
        { flow_direction = "input-output", position = {-5.2, 0}, direction = defines.direction.west },
        { flow_direction = "input-output", connection_type = "linked", linked_connection_id = 2 },
      },
      filter = "pressured-water"
    },
    {
      production_type = "output",
      pipe_picture = py.pipe_pictures("assembling-machine-2", {1.17, 2.78}, {-0.05, -0.8}, nil, nil, pipes2),
      pipe_covers = py.pipe_covers(true, true, true, true),
      volume = 100,
      pipe_connections = {
        { flow_direction = "input-output", position = {5.2, 2}, direction = defines.direction.east },
        { flow_direction = "input-output", connection_type = "linked", linked_connection_id = 3 },
      },
      filter = "drilling-fluid-0"
    },
    {
      production_type = "output",
      pipe_picture = py.pipe_pictures("assembling-machine-2", {1.17, 2.78}, {-0.05, -0.8}, nil, nil, pipes2),
      pipe_covers = py.pipe_covers(true, true, true, true),
      volume = 100,
      pipe_connections = {
        { flow_direction = "input-output", position = {5.2, -2}, direction = defines.direction.east },
        { flow_direction = "input-output", connection_type = "linked", linked_connection_id = 4 },
      },
      filter = "drilling-fluid-1"
    },
    {
      production_type = "output",
      pipe_picture = py.pipe_pictures("assembling-machine-2", {1.17, 2.78}, {-0.05, -0.8}, nil, nil, pipes2),
      pipe_covers = py.pipe_covers(true, true, true, true),
      volume = 100,
      pipe_connections = {
        { flow_direction = "input-output", position = {-5.2, 2}, direction = defines.direction.west },
        { flow_direction = "input-output", connection_type = "linked", linked_connection_id = 5 },
      },
      filter = "drilling-fluid-2"
    },
    {
      production_type = "output",
      pipe_picture = py.pipe_pictures("assembling-machine-2", {1.17, 2.78}, {-0.05, -0.8}, nil, nil, pipes2),
      pipe_covers = py.pipe_covers(true, true, true, true),
      volume = 100,
      pipe_connections = {
        { flow_direction = "input-output", position = {-5.2, -2}, direction = defines.direction.west },
        { flow_direction = "input-output", connection_type = "linked", linked_connection_id = 6 },
      },
      filter = "drilling-fluid-3"
    },
  },
  energy_usage = "600kW", --energy usage used when crafting the rocket
  idle_energy_usage = "1500kW",
  lamp_energy_usage = "0W",
  active_energy_usage = "3990kW",
  rocket_entity = "mega-farm-invisa-rocket",
  rocket_quick_relaunch_start_offset = 0,
  cargo_station_parameters = {hatch_definitions = {{}}},
  times_to_blink = 1,
  light_blinking_speed = 1,
  door_opening_speed = 1 / (4.25 * 60),
  hole_clipping_box = {{-0.5, -0.5}, {0.5, 0.5}},
  door_front_open_offset = {-1.8, 1.8 * 0.43299225},
  door_back_open_offset = {1.8, -1.8 * 0.43299225},
  rocket_rising_delay = 1,
  launch_wait_time = 1,
  launch_to_space_platforms = false,
  can_launch_without_landing_pads = true,
  silo_fade_out_start_distance = 0,
  silo_fade_out_end_distance = 0,
  allowed_effects = {},
  module_slots = 0,
  vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
  working_sound = {
    sound = { filename = "__pyalternativeenergygraphics__/sounds/geothermal-plant.ogg", volume = 0.5 },
    apparent_volume = 0.5
  },
  stateless_visualisation = {
    animation = {
        layers = {
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/geothermal-plant/left-raw.png",
            width = 128,
            height = 512,
            repeat_count = 50,
            line_length = 1,
            frame_count = 1,
            animation_speed = 0.25,
            shift = util.by_pixel(-112, -80)
          },
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/geothermal-plant/left-l.png",
            width = 128,
            height = 512,
            repeat_count = 50,
            line_length = 1,
            frame_count = 1,
            animation_speed = 0.25,
            draw_as_glow = true,
            shift = util.by_pixel(-112, -80)
          },
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/geothermal-plant/mid-raw.png",
            width = 128,
            height = 512,
            line_length = 16,
            frame_count = 50,
            animation_speed = 0.25,
            shift = util.by_pixel(16, -80)
          },
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/geothermal-plant/mid-l.png",
            width = 128,
            height = 512,
            line_length = 16,
            frame_count = 50,
            animation_speed = 0.25,
            draw_as_glow = true,
            shift = util.by_pixel(16, -80)
          },
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/geothermal-plant/right-raw.png",
            width = 96,
            height = 512,
            line_length = 16,
            frame_count = 50,
            animation_speed = 0.25,
            shift = util.by_pixel(128, -80)
          },
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/geothermal-plant/right-l.png",
            width = 96,
            height = 512,
            line_length = 16,
            frame_count = 50,
            animation_speed = 0.25,
            draw_as_glow = true,
            shift = util.by_pixel(128, -80)
          },
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/geothermal-plant/sh.png",
            width = 416,
            height = 320,
            repeat_count = 50,
            line_length = 1,
            frame_count = 1,
            animation_speed = 0.25,
            draw_as_shadow = true,
            shift = util.by_pixel(32, 16)
          }
        }
    }
  }
}
ENTITY {
  type = "assembling-machine",
  name = "geothermal-plant-mk01-base",
  icon = "__pyalternativeenergygraphics__/graphics/icons/geothermal-plant-mk01.png",
  icon_size = 64,
  flags = ENTITY("geothermal-plant-mk01").flags,
  minable = {mining_time = 0.5, result = "geothermal-plant-mk01"},
  max_health = 200,
  corpse = "big-remnants",
  selectable_in_game = false,
  selection_priority = 1,
  dying_explosion = "big-explosion",
  collision_box = {{ -5.2, -5.2}, {5.2, 5.2}},
  collision_mask = {layers = {}},
  energy_source = {
    type = "electric",
    usage_priority = "secondary-input"
  },
  fluid_boxes = {
    {
      production_type = "input",
      volume = 100,
      pipe_connections = {{ flow_direction = "input", connection_type = "linked", linked_connection_id = 1 }},
      filter = "drilling-fluid-0"
    },
    {
      production_type = "input",
      volume = 100,
      pipe_connections = {{ flow_direction = "input", connection_type = "linked", linked_connection_id = 2 }},
      filter = "drilling-fluid-1"
    },
    {
      production_type = "input",
      volume = 100,
      pipe_connections = {{ flow_direction = "input", connection_type = "linked", linked_connection_id = 3 }},
      filter = "drilling-fluid-2"
    },
    {
      production_type = "input",
      volume = 100,
      pipe_connections = {{ flow_direction = "input", connection_type = "linked", linked_connection_id = 4 }},
      filter = "drilling-fluid-3"
    },
  },
  fixed_recipe = "drilling-fluids",
  energy_usage = "2.5MW",
  crafting_speed = 1,
  crafting_categories = {"drilling-fluid"},
  allowed_effects = {},
  module_slots = 0,
}

-- add extra fluidboxes to regenrative heat exchanger
data.raw["assembling-machine"].rhe.fluid_boxes = {
  {
    production_type = "input",
    pipe_covers = py.pipe_covers(false, true, true, true),
    volume = 1000,
    pipe_connections = {{flow_direction = "input", position = {0.0, -1.95}, direction = defines.direction.north}}
  },
  {
    production_type = "input",
    pipe_covers = py.pipe_covers(false, true, true, true),
    volume = 1000,
    pipe_connections = {{flow_direction = "input", position = {1.95, 0.0}, direction = defines.direction.east}}
  },
  {
    production_type = "output",
    pipe_covers = py.pipe_covers(false, true, true, true),
    volume = 100,
    pipe_connections = {{flow_direction = "output", position = {0.0, 1.95}, direction = defines.direction.south}}
  }
}

-- slow down geowater->steam recipe, and add more ingredients
RECIPE("geo-he-00"):set_fields {
  energy_required = 10,
  ingredients = {
    {type = "fluid", name = "geothermal-water", amount = 180, minimum_temperature = 950},
    {type = "fluid", name = "water",            amount = 400}
  },
  results = {
    {type = "fluid", name = "steam",             amount = 320, temperature = 500}
  }
}

data.raw.resource["geothermal-crack"].minable.fluid_amount = 0
data.raw.resource["geothermal-crack"].minable.required_fluid = nil

-- copy of geothermal crack to represent drilling
data:extend {{
    type = "resource",
    name = "geothermal-crack-borehole",
    category = "geothermal-crack",
    icon = "__pyalternativeenergygraphics__/graphics/icons/geothermal-crack.png",
    icon_size = 64,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.639, g = 0.074, b = 0.007},
    highlight = true,
    map_grid = false,
    minable = {
        mining_time = 1,
        results = {},
        required_fluid = "pressured-water",
        fluid_amount = 0
    },
    resource_patch_search_radius = 12,
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    collision_mask = {layers = {resource = true}},
    stage_counts = {0},
    stages = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/ore/geothermal-crack/geothermal-crack.png",
                priority = "extra-high",
                width = 352,
                height = 352,
                frame_count = 1,
                variation_count = 1,
                shift = util.by_pixel(0, 0)
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/ore/geothermal-crack/glow.png",
                priority = "extra-high",
                draw_as_glow = true,
                width = 352,
                height = 352,
                frame_count = 1,
                variation_count = 1,
                shift = util.by_pixel(0, 0)
            }
        }
    }
}}
