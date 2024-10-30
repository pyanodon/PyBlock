RECIPE {
  type = "recipe",
  name = "cultivator-mk02",
  energy_required = 0.5,
  ingredients = {
      {"cultivator-mk01", 1},
      {"glass", 30},
      {"nexelit-plate", 15},
      {"duralumin", 10},
      {"advanced-circuit", 10},
      {"engine-unit", 1},
      {"latex", 10},
      {"neuroprocessor", 5},
  },
  results = {
      {"cultivator-mk02", 1}
  }
}:add_unlock("biotech-machines-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 50})

ITEM {
  type = "item",
  name = "cultivator-mk02",
  icons = {
    {
      icon = "__pyalienlifegraphics3__/graphics/icons/collector-mk02.png",
      icon_size = 64,
    },
    {
      icon = "__PyBlock__/graphics/icons/manual-gear.png",
      icon_size = 32,
      shift = {10, -10},
      scale = 0.5
    }
  },
  flags = {},
  subgroup = "py-alienlife-buildings-mk02",
  order = "x",
  place_result = "cultivator-mk02",
  stack_size = 10
}

ENTITY {
  type = "assembling-machine",
  name = "cultivator-mk02",
  icons = {
    {
      icon = "__pyalienlifegraphics3__/graphics/icons/collector-mk02.png",
      icon_size = 64,
    },
    {
      icon = "__PyBlock__/graphics/icons/manual-gear.png",
      icon_size = 32,
      shift = {8, -8},
      scale = 0.5
    }
  },
  icon_size = 64,
  crafting_speed = 2,
  flags = {"placeable-neutral", "player-creation"},
  minable = {mining_time = 0.5, result = "cultivator-mk02"},
  fast_replaceable_group = "cultivator",
  max_health = 200,
  crafting_categories = {"cultivation"},
  corpse = "big-remnants",
  dying_explosion = "big-explosion",
  collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
  selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
  match_animation_speed_to_activity = false,
  fluid_boxes = {
    {
      production_type = "input",
      -- pipe_picture = {
        -- north = {
        --   filename = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.north.filename,
        --   width = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.north.width,
        --   height = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.north.height,
        --   shift = {-data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.north.width, -data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.north.height}
        -- },
        -- east = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.east,
        -- south = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.south,
        -- west = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.west
      -- },
      pipe_covers = py.pipe_covers(true, true, true, true),
      base_area = 10,
      base_level = -1,
      pipe_connections = {
        { position = {-4, 0}, type = 'input' },
        { position = {0, 4}, type = 'input' },
        { position = {4, 0}, type = 'input' },
        { position = {0, -4}, type = 'input' },
      },
    },
    -- {
    --   production_type = "output",
    --   pipe_covers = py.pipe_covers(true, true, true, true),
    --   pipe_picture = py.pipe_pictures("pipe-to-ground", nil, {-0.05, -0.8}, nil, nil, pipes),
    --   base_level = 1,
    --   pipe_connections = {{ position = {0, -4}, type = 'output' }},
    -- },
  },
  module_specification = {
    module_slots = 1
  },
  allowed_effects = {"consumption", "speed"},
  energy_source = {
    type = "electric",
    usage_priority = "secondary-input",
    emissions_per_minute = 1,
  },
  energy_usage = "250kW",
  collision_mask = {layers = {item = true, object = true, water_tile = true}},
  vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
  working_sound = {
    sound = {filename = "__pyalienlifegraphics__/sounds/collector.ogg", volume = 0.9},
    idle_sound = {filename = "__pyalienlifegraphics__/sounds/collector.ogg", volume = 0.3},
    apparent_volume = 2.5
  },
  next_upgrade = "cultivator-mk03",
  animation = {
    north = {
      layers = {
        {
          -- count: 0, variation: 60, richness: 1
          -- max_x = 3811 max_y = 768
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(-93, -112),
          position = {3840, 800}
        },
        {
          -- count: 1, variation: 22, richness: 1
          -- max_x = 1411 max_y = 768
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(-61, -112),
          position = {1408, 800}
        },
        {
          -- count: 2, variation: 47, richness: 1
          -- max_x = 3043 max_y = 768
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(-29, -112),
          position = {3008, 800}
        },
        {
          -- count: 3, variation: 14, richness: 1
          -- max_x = 963 max_y = 768
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(3, -112),
          position = {896, 800}
        },
        {
          -- count: 4, variation: 56, richness: 1
          -- max_x = 3683 max_y = 768
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(35, -112),
          position = {3584, 800}
        },
        {
          -- count: 5, variation: 41, richness: 1
          -- max_x = 2755 max_y = 768
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(67, -112),
          position = {2624, 800}
        },
        {
          -- count: 6, variation: 21, richness: 1
          -- max_x = 1507 max_y = 768
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(99, -112),
          position = {1344, 800}
        },
        {
          -- count: 7, variation: 24, richness: 1
          -- max_x = 1507 max_y = 800
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(-93, -80),
          position = {1536, 800}
        },
        {
          -- count: 8, variation: 46, richness: 3
          -- max_x = 2947 max_y = 640
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(-61, -80),
          position = {2944, 640}
        },
        {
          -- count: 9, variation: 24, richness: 3
          -- max_x = 1571 max_y = 640
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(-29, -80),
          position = {1536, 640}
        },
        {
          -- count: 10, variation: 42, richness: 4
          -- max_x = 2755 max_y = 560
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(3, -80),
          position = {2688, 560}
        },
        {
          -- count: 11, variation: 14, richness: 3
          -- max_x = 995 max_y = 640
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(35, -80),
          position = {896, 640}
        },
        {
          -- count: 12, variation: 38, richness: 4
          -- max_x = 2563 max_y = 560
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(67, -80),
          position = {2432, 560}
        },
        {
          -- count: 13, variation: 4, richness: 1
          -- max_x = 419 max_y = 800
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(99, -80),
          position = {256, 800}
        },
        {
          -- count: 14, variation: 35, richness: 1
          -- max_x = 2211 max_y = 832
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(-93, -48),
          position = {2240, 800}
        },
        {
          -- count: 15, variation: 59, richness: 3
          -- max_x = 3779 max_y = 672
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(-61, -48),
          position = {3776, 640}
        },
        {
          -- count: 16, variation: 22, richness: 6
          -- max_x = 1443 max_y = 432
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(-29, -48),
          position = {1408, 400}
        },
        {
          -- count: 17, variation: 25, richness: 5
          -- max_x = 1667 max_y = 512
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(3, -48),
          position = {1600, 480}
        },
        {
          -- count: 18, variation: 18, richness: 7
          -- max_x = 1251 max_y = 352
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(35, -48),
          position = {1152, 320}
        },
        {
          -- count: 19, variation: 0, richness: 3
          -- max_x = 131 max_y = 672
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(67, -48),
          position = {0, 640}
        },
        {
          -- count: 20, variation: 51, richness: 1
          -- max_x = 3427 max_y = 832
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(99, -48),
          position = {3264, 800}
        },
        {
          -- count: 21, variation: 10, richness: 2
          -- max_x = 611 max_y = 784
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(-93, -16),
          position = {640, 720}
        },
        {
          -- count: 22, variation: 26, richness: 4
          -- max_x = 1667 max_y = 624
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(-61, -16),
          position = {1664, 560}
        },
        {
          -- count: 23, variation: 52, richness: 7
          -- max_x = 3363 max_y = 384
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(-29, -16),
          position = {3328, 320}
        },
        {
          -- count: 24, variation: 58, richness: 5
          -- max_x = 3779 max_y = 544
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(3, -16),
          position = {3712, 480}
        },
        {
          -- count: 25, variation: 62, richness: 6
          -- max_x = 4067 max_y = 464
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(35, -16),
          position = {3968, 400}
        },
        {
          -- count: 26, variation: 46, richness: 5
          -- max_x = 3075 max_y = 544
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(67, -16),
          position = {2944, 480}
        },
        {
          -- count: 27, variation: 23, richness: 1
          -- max_x = 1635 max_y = 864
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(99, -16),
          position = {1472, 800}
        },
        {
          -- count: 28, variation: 14, richness: 2
          -- max_x = 867 max_y = 816
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(-93, 16),
          position = {896, 720}
        },
        {
          -- count: 29, variation: 9, richness: 3
          -- max_x = 579 max_y = 736
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(-61, 16),
          position = {576, 640}
        },
        {
          -- count: 30, variation: 60, richness: 5
          -- max_x = 3875 max_y = 576
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(-29, 16),
          position = {3840, 480}
        },
        {
          -- count: 31, variation: 45, richness: 5
          -- max_x = 2947 max_y = 576
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(3, 16),
          position = {2880, 480}
        },
        {
          -- count: 32, variation: 52, richness: 6
          -- max_x = 3427 max_y = 496
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(35, 16),
          position = {3328, 400}
        },
        {
          -- count: 33, variation: 56, richness: 4
          -- max_x = 3715 max_y = 656
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(67, 16),
          position = {3584, 560}
        },
        {
          -- count: 34, variation: 54, richness: 1
          -- max_x = 3619 max_y = 896
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(99, 16),
          position = {3456, 800}
        },
        {
          -- count: 35, variation: 34, richness: 1
          -- max_x = 2147 max_y = 928
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(-93, 48),
          position = {2176, 800}
        },
        {
          -- count: 36, variation: 16, richness: 3
          -- max_x = 1027 max_y = 768
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(-61, 48),
          position = {1024, 640}
        },
        {
          -- count: 37, variation: 29, richness: 3
          -- max_x = 1891 max_y = 768
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(-29, 48),
          position = {1856, 640}
        },
        {
          -- count: 38, variation: 39, richness: 3
          -- max_x = 2563 max_y = 768
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(3, 48),
          position = {2496, 640}
        },
        {
          -- count: 39, variation: 52, richness: 5
          -- max_x = 3427 max_y = 608
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(35, 48),
          position = {3328, 480}
        },
        {
          -- count: 40, variation: 43, richness: 4
          -- max_x = 2883 max_y = 688
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(67, 48),
          position = {2752, 560}
        },
        {
          -- count: 41, variation: 12, richness: 1
          -- max_x = 931 max_y = 928
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(99, 48),
          position = {768, 800}
        },
        {
          -- count: 42, variation: 36, richness: 1
          -- max_x = 2275 max_y = 960
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(-93, 80),
          position = {2304, 800}
        },
        {
          -- count: 43, variation: 21, richness: 1
          -- max_x = 1347 max_y = 960
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(-61, 80),
          position = {1344, 800}
        },
        {
          -- count: 44, variation: 33, richness: 1
          -- max_x = 2147 max_y = 960
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(-29, 80),
          position = {2112, 800}
        },
        {
          -- count: 45, variation: 38, richness: 1
          -- max_x = 2499 max_y = 960
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(3, 80),
          position = {2432, 800}
        },
        {
          -- count: 46, variation: 25, richness: 1
          -- max_x = 1699 max_y = 960
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(35, 80),
          position = {1600, 800}
        },
        {
          -- count: 47, variation: 2, richness: 1
          -- max_x = 259 max_y = 960
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(67, 80),
          position = {128, 800}
        },
        {
          -- count: 48, variation: 56, richness: 1
          -- max_x = 3747 max_y = 960
          filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
          width = 64,
          height = 80,
          frame_count = 1,
          repeat_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(99, 80),
          position = {3584, 800}
        },
        {
          filename = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.north.filename,
          width = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.north.width,
          height = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.north.height,
          frame_count = 1,
          repeat_count = 255,
          amimation_speed = 0.4,
          shift = {-data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.north.width, -256-data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.north.height},
          -- position = {0, -256}
        },
        {
          filename = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.east.filename,
          width = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.east.width,
          height = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.east.height,
          frame_count = 1,
          repeat_count = 255,
          amimation_speed = 0.4,
          shift = {256-data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.east.width, -data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.east.height},
          -- position = {256, 0}
        },
        {
          filename = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.south.filename,
          width = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.south.width,
          height = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.south.height,
          frame_count = 1,
          repeat_count = 255,
          amimation_speed = 0.4,
          shift = {-data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.south.width, 256-data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.south.height},
          -- position = {0, 256}
        },
        {
          filename = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.west.filename,
          width = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.west.width,
          height = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.west.height,
          frame_count = 1,
          repeat_count = 255,
          amimation_speed = 0.4,
          shift = {-256-data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.west.width, -data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.west.height},
          -- position = {-256, 0}
        },
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f1.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(-96, 0)
        },
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f2.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(-64, 0)
        },
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f3.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(-32, 0)
        },
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f4.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(0, 0)
        },
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f5.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(32, 0)
        },
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f6.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(64, 0)
        },
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f7.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(96, 0)
        },
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f8.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(128, 0)
        },
--MASKS
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f1-mask.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0},
          shift = util.by_pixel(-96, 0)
        },
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f2-mask.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0},
          shift = util.by_pixel(-64, 0)
        },
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f3-mask.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0},
          shift = util.by_pixel(-32, 0)
        },
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f4-mask.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0},
          shift = util.by_pixel(0, 0)
        },
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f5-mask.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0},
          shift = util.by_pixel(32, 0)
        },
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f6-mask.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0},
          shift = util.by_pixel(64, 0)
        },
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f7-mask.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0},
          shift = util.by_pixel(96, 0)
        },
      }
    }
  },
  idle_animation = {
    north = {
      layers = {
        {
          filename = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.north.filename,
          width = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.north.width,
          height = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.north.height,
          frame_count = 1,
          repeat_count = 255,
          amimation_speed = 0.4,
          shift = {-data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.north.width, -256-data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.north.height},
          -- position = {0, -256}
        },
        {
          filename = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.east.filename,
          width = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.east.width,
          height = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.east.height,
          frame_count = 1,
          repeat_count = 255,
          amimation_speed = 0.4,
          shift = {256-data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.east.width, -data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.east.height},
          -- position = {256, 0}
        },
        {
          filename = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.south.filename,
          width = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.south.width,
          height = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.south.height,
          frame_count = 1,
          repeat_count = 255,
          amimation_speed = 0.4,
          shift = {-data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.south.width, 256-data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.south.height},
          -- position = {0, 256}
        },
        {
          filename = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.west.filename,
          width = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.west.width,
          height = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.west.height,
          frame_count = 1,
          repeat_count = 255,
          amimation_speed = 0.4,
          shift = {-256-data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.west.width, -data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.west.height},
          -- position = {-256, 0}
        },
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f1.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(-96, 0)
        },
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f2.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(-64, 0)
        },
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f3.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(-32, 0)
        },
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f4.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(0, 0)
        },
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f5.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(32, 0)
        },
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f6.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(64, 0)
        },
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f7.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(96, 0)
        },
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f8.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          shift = util.by_pixel(128, 0)
        },
--MASKS
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f1-mask.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0},
          shift = util.by_pixel(-96, 0)
        },
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f2-mask.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0},
          shift = util.by_pixel(-64, 0)
        },
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f3-mask.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0},
          shift = util.by_pixel(-32, 0)
        },
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f4-mask.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0},
          shift = util.by_pixel(0, 0)
        },
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f5-mask.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0},
          shift = util.by_pixel(32, 0)
        },
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f6-mask.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0},
          shift = util.by_pixel(64, 0)
        },
        {
          filename = "__pyalienlifegraphics__/graphics/entity/collector/f7-mask.png",
          width = 32,
          height = 288,
          line_length = 64,
          frame_count = 255,
          animation_speed = 0.4,
          tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0},
          shift = util.by_pixel(96, 0)
        },
      }
    }
  },
}