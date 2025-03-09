RECIPE {
  type = "recipe",
  name = "flora-cultivator-mk01",
  energy_required = 5,
  enabled = false,
  ingredients = {
    {type = "item", name = "burner-mining-drill", amount = 2},
    {type = "item", name = "iron-gear-wheel",  amount = 10},
    {type = "item", name = "iron-plate",       amount = 20},
    {type = "item", name = "steam-engine",     amount = 1},
    {type = "item", name = "inductor1",        amount = 5},
    {type = "item", name = "soil-extractor-mk00", amount = 1},
  },
  results = {
    {type = "item", name = "flora-cultivator-mk01", amount = 1}
  }
}:add_unlock("automation-science-pack")

RECIPE {
  type = "recipe",
  name = "collector-to-cultivator-mk01",
  energy_required = 5,
  enabled = false,
  ingredients = {
    {type = "item", name = "flora-collector-mk01", amount = 1}
  },
  results = {
    {type = "item", name = "flora-cultivator-mk01", amount = 1}
  }
}:add_unlock("automation-science-pack")

RECIPE {
  type = "recipe",
  name = "cultivator-to-collector-mk01",
  energy_required = 5,
  enabled = false,
  ingredients = {
    {type = "item", name = "flora-cultivator-mk01", amount = 1}
  },
  results = {
    {type = "item", name = "flora-collector-mk01", amount = 1}
  }
}:add_unlock("automation-science-pack")

RECIPE {
  type = "recipe",
  name = "flora-cultivator-mk02",
  energy_required = 5,
  enabled = false,
  ingredients = {
    {type = "item", name = "flora-cultivator-mk01", amount = 1},
    {type = "item", name = "glass",            amount = 30},
    {type = "item", name = "nexelit-plate",    amount = 15},
    {type = "item", name = "duralumin",        amount = 10},
    {type = "item", name = "advanced-circuit", amount = 10},
    {type = "item", name = "engine-unit",      amount = 1},
    {type = "item", name = "latex",            amount = 10},
    {type = "item", name = "neuroprocessor",   amount = 5},
  },
  results = {
    {type = "item", name = "flora-cultivator-mk02", amount = 1}
  }
}:add_unlock("biotech-machines-mk02"):add_ingredient {type = "item", name = "small-parts-02", amount = 50}

RECIPE {
  type = "recipe",
  name = "collector-to-cultivator-mk02",
  energy_required = 5,
  enabled = false,
  ingredients = {
    {type = "item", name = "flora-collector-mk02", amount = 1}
  },
  results = {
    {type = "item", name = "flora-cultivator-mk02", amount = 1}
  }
}:add_unlock("biotech-machines-mk02")

RECIPE {
  type = "recipe",
  name = "cultivator-to-collector-mk02",
  energy_required = 5,
  enabled = false,
  ingredients = {
    {type = "item", name = "flora-cultivator-mk02", amount = 1}
  },
  results = {
    {type = "item", name = "flora-collector-mk02", amount = 1}
  }
}:add_unlock("biotech-machines-mk02")

RECIPE {
  type = "recipe",
  name = "flora-cultivator-mk03",
  energy_required = 5,
  enabled = false,
  ingredients = {
    {type = "item", name = "flora-cultivator-mk02",  amount = 1},
    {type = "item", name = "ticocr-alloy",          amount = 20},
    {type = "item", name = "low-density-structure", amount = 20},
    {type = "item", name = "stainless-steel",       amount = 30},
    {type = "item", name = "processing-unit",       amount = 30},
    {type = "item", name = "electric-engine-unit",  amount = 15},
    {type = "item", name = "super-alloy",           amount = 30},
  },
  results = {
    {type = "item", name = "flora-cultivator-mk03", amount = 1}
  }
}:add_unlock("biotech-machines-mk03"):add_ingredient {type = "item", name = "small-parts-03", amount = 50}

RECIPE {
  type = "recipe",
  name = "collector-to-cultivator-mk03",
  energy_required = 5,
  enabled = false,
  ingredients = {
    {type = "item", name = "flora-collector-mk03", amount = 1}
  },
  results = {
    {type = "item", name = "flora-cultivator-mk03", amount = 1}
  }
}:add_unlock("biotech-machines-mk03")

RECIPE {
  type = "recipe",
  name = "cultivator-to-collector-mk03",
  energy_required = 5,
  enabled = false,
  ingredients = {
    {type = "item", name = "flora-cultivator-mk03", amount = 1}
  },
  results = {
    {type = "item", name = "flora-collector-mk03", amount = 1}
  }
}:add_unlock("biotech-machines-mk03")

RECIPE {
  type = "recipe",
  name = "flora-cultivator-mk04",
  energy_required = 5,
  enabled = false,
  ingredients = {
    {type = "item", name = "flora-cultivator-mk03", amount = 1},
    {type = "item", name = "science-coating",      amount = 20},
    {type = "item", name = "divertor",             amount = 5},
    {type = "item", name = "control-unit",         amount = 5},
    {type = "item", name = "metallic-glass",       amount = 10},
    {type = "item", name = "boron-carbide",        amount = 30},
  },
  results = {
    {type = "item", name = "flora-cultivator-mk04", amount = 1}
  }
}:add_unlock("biotech-machines-mk04")

local animation = {}
local sets = {}

-- for i=1, 7 do
--   for j=1, 7 do
--     animation[#animation+1] = {
--       -- count: 0, variation: 60, richness: 1
--       -- max_x = 3811 max_y = 768
--       filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
--       width = 128,
--       height = 80,
--       frame_count = 1,
--       repeat_count = 255,
--       animation_speed = 0.4,
--       shift = util.by_pixel(-93 + i * 32, -112 + j * 32),
--       position = {3840, 800}
--     }
--   end
-- end


RECIPE {
  type = "recipe",
  name = "collector-to-cultivator-mk04",
  energy_required = 5,
  enabled = false,
  ingredients = {
    {type = "item", name = "flora-collector-mk04", amount = 1}
  },
  results = {
    {type = "item", name = "flora-cultivator-mk04", amount = 1}
  }
}:add_unlock("biotech-machines-mk04")

RECIPE {
  type = "recipe",
  name = "cultivator-to-collector-mk04",
  energy_required = 5,
  enabled = false,
  ingredients = {
    {type = "item", name = "flora-cultivator-mk04", amount = 1}
  },
  results = {
    {type = "item", name = "flora-collector-mk04", amount = 1}
  }
}:add_unlock("biotech-machines-mk04")

for i = 1, 4 do
  local name = "flora-cultivator-mk0" .. i
  local icons = {
    {
      icon = "__pyalienlifegraphics3__/graphics/icons/" .. "flora-collector-mk0" .. i .. ".png",
      icon_size = 64,
    },
    {
      icon = "__PyBlock__/graphics/icons/manual-gear.png",
      icon_size = 32,
      shift = {10, -10},
      scale = 0.5
    }
  }

  ITEM {
    type = "item",
    name = name,
    icons = icons,
    flags = {},
    subgroup = "py-alienlife-buildings-mk0" .. i,
    order = "x",
    place_result = name,
    stack_size = 10
  }

  ENTITY {
    type = "assembling-machine",
    name = name,
    icons = icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = name},
    fast_replaceable_group = "flora-cultivator",
    max_health = 200 * i,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_slots = i,
    allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
    crafting_speed = i,
    crafting_categories = {"cultivation"},
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {
        pollution = i * 3
      },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = py.pipe_covers(true, true, true, true),
        volume = 100,
        pipe_connections = {
          -- { position = {0, -3}, flow_direction = "input-output", direction = 0 },
          { position = {3, 0}, flow_direction = "input-output", direction = 4 },
          -- { position = {0, 3}, flow_direction = "input-output", direction = 8 },
          { position = {-3, 0}, flow_direction = "input-output", direction = 12 },
        }
      }
    },
    energy_usage = (100 * (2 ^ (i - 1))) .. "kW",
    vector_to_place_result = {0, -3.85},
    match_animation_speed_to_activity = false,
    collision_mask = {layers = {item = true, object = true, water_tile = true}},
    circuit_wire_connection_points = circuit_connector_definitions["flora-collector-mkxx"].points,
    circuit_connector_sprites = circuit_connector_definitions["flora-collector-mkxx"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
      animation = {
        north = {
          layers = {
            {
              -- count: 0, variation: 60, richness: 1
              -- max_x = 3811 max_y = 768
              filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
              width = 128,
              height = 80,
              frame_count = 1,
              repeat_count = 255,
              animation_speed = 0.4,
              shift = util.by_pixel(-93, -112),
              position = {3840, 800}
            },
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f1.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              shift = util.by_pixel(-96, 0)
            },
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f2.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              shift = util.by_pixel(-64, 0)
            },
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f3.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              shift = util.by_pixel(-32, 0)
            },
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f4.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              shift = util.by_pixel(0, 0)
            },
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f5.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              shift = util.by_pixel(32, 0)
            },
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f6.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              shift = util.by_pixel(64, 0)
            },
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f7.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              shift = util.by_pixel(96, 0)
            },
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f8.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              shift = util.by_pixel(128, 0)
            },
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f1-mask.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              tint = py.tints[i],
              shift = util.by_pixel(-96, 0)
            },
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f2-mask.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              tint = py.tints[i],
              shift = util.by_pixel(-64, 0)
            },
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f3-mask.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              tint = py.tints[i],
              shift = util.by_pixel(-32, 0)
            },
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f4-mask.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              tint = py.tints[i],
              shift = util.by_pixel(0, 0)
            },
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f5-mask.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              tint = py.tints[i],
              shift = util.by_pixel(32, 0)
            },
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f6-mask.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              tint = py.tints[i],
              shift = util.by_pixel(64, 0)
            },
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f7-mask.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              tint = py.tints[i],
              shift = util.by_pixel(96, 0)
            },
          }
        }
      },
      idle_animation = {
        north = {
          layers = {
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f1.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              shift = util.by_pixel(-96, 0)
            },
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f2.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              shift = util.by_pixel(-64, 0)
            },
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f3.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              shift = util.by_pixel(-32, 0)
            },
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f4.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              shift = util.by_pixel(0, 0)
            },
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f5.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              shift = util.by_pixel(32, 0)
            },
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f6.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              shift = util.by_pixel(64, 0)
            },
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f7.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              shift = util.by_pixel(96, 0)
            },
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f8.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              shift = util.by_pixel(128, 0)
            },
    --MASKS
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f1-mask.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              tint = py.tints[i],
              shift = util.by_pixel(-96, 0)
            },
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f2-mask.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              tint = py.tints[i],
              shift = util.by_pixel(-64, 0)
            },
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f3-mask.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              tint = py.tints[i],
              shift = util.by_pixel(-32, 0)
            },
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f4-mask.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              tint = py.tints[i],
              shift = util.by_pixel(0, 0)
            },
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f5-mask.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              tint = py.tints[i],
              shift = util.by_pixel(32, 0)
            },
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f6-mask.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              tint = py.tints[i],
              shift = util.by_pixel(64, 0)
            },
            {
              filename = "__pyalienlifegraphics__/graphics/entity/flora-collector/f7-mask.png",
              width = 32,
              height = 288,
              line_length = 64,
              frame_count = 255,
              animation_speed = 0.4,
              tint = py.tints[i],
              shift = util.by_pixel(96, 0)
            }
          }
        }
      }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
      sound = {filename = "__pyalienlifegraphics__/sounds/flora-collector.ogg", volume = 0.9},
      idle_sound = {filename = "__pyalienlifegraphics__/sounds/flora-collector.ogg", volume = 0.3},
      apparent_volume = 2.5
    },
    next_upgrade = (i ~= 4) and ("flora-cultivator-mk0" .. (i + 1)) or nil
  }
end
