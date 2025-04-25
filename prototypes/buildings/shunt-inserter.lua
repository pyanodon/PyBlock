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

ITEM {
  type = "item",
  name = "shunt-inserter",
  icons = {
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
  },
  flags = {},
  subgroup = "inserter",
  order = "a[shunt-inserter]",
  place_result = "shunt-inserter",
  stack_size = 50
}

ENTITY {
  type = "inserter",
  name = "shunt-inserter",
  icons = {
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
  },
  flags = {"placeable-neutral", "player-creation"},
  minable = {mining_time = 0.1, result = "shunt-inserter"},
  fast_replaceable_group = "inserter",
  max_health = 100,
  corpse = "burner-inserter-remnants",
  dying_explosion = "burner-inserter-explosion",
  collision_box = {{-0.289063, -0.289063}, {0.289063, 0.289063}},
  selection_box = {{-0.398438, -0.398438}, {0.398438, 0.398438}},
  energy_source = {
    type = "fluid",
    effectivity = 1,
    emissions = 1,
    fluid_box = {
      volume = 20,
      pipe_covers = py.pipe_covers(true, true, true, true),
      pipe_connections = {
        {flow_direction = "input-output", position = {0, 0}, direction = 4},
        {flow_direction = "input-output", position = {0, 0}, direction = 12},
      },
      production_type = "input-output",
      filter = "steam",
      maximum_temperature = 2000
    }
  },
  circuit_wire_max_distance = data.raw.inserter["burner-inserter"].circuit_wire_max_distance,
  circuit_connector = data.raw.inserter["burner-inserter"].circuit_connector,
  extension_speed = 0.035,
  rotation_speed = 0.0175,
  insert_position = {0, 1.2},
  pickup_position = {0, -1},
  energy_per_movement = "10kW",
  energy_per_rotation = "10kW",
  hide_connection_info = true,
  filter_count = 1,
  platform_picture = {
    north = table.deepcopy(data.raw["pipe"]["pipe"].pictures.straight_horizontal),
    south = table.deepcopy(data.raw["pipe"]["pipe"].pictures.straight_horizontal),
    east = table.deepcopy(data.raw["pipe"]["pipe"].pictures.straight_vertical),
    west = table.deepcopy(data.raw["pipe"]["pipe"].pictures.straight_vertical)
  },
  hand_base_picture = table.deepcopy(data.raw["inserter"]["burner-inserter"].hand_base_picture),
  hand_open_picture = table.deepcopy(data.raw["inserter"]["burner-inserter"].hand_open_picture),
  hand_closed_picture = table.deepcopy(data.raw["inserter"]["burner-inserter"].hand_closed_picture),
  icon_draw_specification = table.deepcopy(data.raw["inserter"]["burner-inserter"].icon_draw_specification)
}

data.raw["inserter"]["shunt-inserter"].icon_draw_specification.shift = {0.25, -0.25}
data.raw["inserter"]["shunt-inserter"].hand_base_picture.tint = {0.75, 0.75, 0.75, 1}
data.raw["inserter"]["shunt-inserter"].hand_open_picture.tint = {0.75, 0.75, 0.75, 1}
data.raw["inserter"]["shunt-inserter"].hand_closed_picture.tint = {0.75, 0.75, 0.75, 1}
