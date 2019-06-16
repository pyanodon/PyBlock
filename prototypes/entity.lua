local fun = require("functions/functions")

function make_2way_animation_from_spritesheet(animation)
  local function make_animation_layer(idx, anim)
    return
    {
      filename = anim.filename,
      priority = anim.priority or "high",
      x = idx * anim.width,
      width = anim.width,
      height = anim.height,
      frame_count = anim.frame_count or 1,
      line_length = anim.line_length,
      shift = anim.shift,
      draw_as_shadow = anim.draw_as_shadow,
      apply_runtime_tint = anim.apply_runtime_tint,
      scale = anim.scale or 1,
      tint = anim.tint
    }
  end

  local function make_animation_layer_with_hr_version(idx, anim)
    local anim_parameters = make_animation_layer(idx, anim)
    if anim.hr_version and anim.hr_version.filename then
      anim_parameters.hr_version = make_animation_layer(idx, anim.hr_version)
    end
    return anim_parameters
  end

  local function make_animation(idx)
    if animation.layers then
      local tab = { layers = {} }
      for k,v in ipairs(animation.layers) do
        table.insert(tab.layers, make_animation_layer_with_hr_version(idx, v))
      end
      return tab
    else
      return make_animation_layer_with_hr_version(idx, animation)
    end
  end

  return
  {
    north = make_animation(0),
    east = make_animation(1),
    south = make_animation(0),
    west = make_animation(1)
  }
end

data:extend(
{
	{
    type = "mining-drill",
    name = "cheap-iron-mine",
    icon = "__pyrawores__/graphics/icons/mega-iron.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "cheap-iron-mine"},
    fast_replaceable_group = "iron-mine",
    max_health = 600,
    resource_categories = {"iron-rock"},
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-6.3, -6.3}, {6.3, 6.3}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
	--[[
	input_fluid_box =
    {
      production_type = "input-output",
      pipe_picture = assembler2pipepictures(),
      pipe_covers = pipecoverspictures(),
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_connections =
      {
        { position = {-7, 0} },
        { position = {7, 0} },
        { position = {0, 7} }
      }
    },
	]]--
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    mining_speed = 1.94,
    energy_source =
    {
      type = "fluid",
      effectivity = 1,
      emissions = 1,
	  fluid_box =
		{
		base_area = 1,
		height = 2,
		base_level = -1,
		pipe_covers = pipecoverspictures(),
		pipe_connections =
			{
			{type = "input", position = {-7,0}},
			{type = "input", position = {7, 0} },
			{type = "input", position = {0, 7} },
			},
		filter = "steam",
		production_type = "input",
		},
		scale_fluid_usage = true,
    },
    energy_usage = "1500kW",
    mining_power = 2,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, -6.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    animations = {
        layers = {
            {
                filename = "__pyrawores__/graphics/entity/iron-mine/botleft.png",
                width = 128,
                height = 128,
                line_length = 16,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(-144, 112)
            },
            {
                filename = "__pyrawores__/graphics/entity/iron-mine/botmid.png",
                width = 128,
                height = 128,
                line_length = 16,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(-16, 112)
            },
            {
                filename = "__pyrawores__/graphics/entity/iron-mine/botright.png",
                width = 128,
                height = 128,
                line_length = 16,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(112, 112)
            },
            {
                filename = "__pyrawores__/graphics/entity/iron-mine/midleft.png",
                width = 128,
                height = 128,
                line_length = 16,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(-144, -16)
            },
            {
                filename = "__pyrawores__/graphics/entity/iron-mine/midmid.png",
                width = 128,
                height = 128,
                line_length = 16,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(-16, -16)
            },
            {
                filename = "__pyrawores__/graphics/entity/iron-mine/midright.png",
                width = 128,
                height = 128,
                line_length = 16,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(112, -16)
            },
            {
                filename = "__pyrawores__/graphics/entity/iron-mine/topleft.png",
                width = 128,
                height = 128,
                line_length = 16,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(-144, -144)
            },
            {
                filename = "__pyrawores__/graphics/entity/iron-mine/topmid.png",
                width = 128,
                height = 128,
                line_length = 16,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(-16, -144)
            },
            {
                filename = "__pyrawores__/graphics/entity/iron-mine/topright.png",
                width = 128,
                height = 128,
                line_length = 16,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(112, -144)
            },
            {
                filename = "__pyrawores__/graphics/entity/iron-mine/botline.png",
                width = 416,
                height = 32,
                line_length = 4,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(0, 192)
            },
            {
                filename = "__pyrawores__/graphics/entity/iron-mine/rightline.png",
                width = 32,
                height = 416,
                line_length = 64,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(192, 0)
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyrawores__/sounds/iron-mine.ogg", volume = 1.0},
        idle_sound = {filename = "__pyrawores__/sounds/iron-mine.ogg", volume = 0.7},
        apparent_volume = 2.5
    }
	},
	{
    type = "pipe",
    name = "wrought-iron-pipe",
    icon = "__PyBlock__/graphics/pipe.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "wrought-iron-pipe"},
    max_health = 100,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        percent = 30
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    pictures = pipepictures(),
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.85
        }
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },

    horizontal_window_bounding_box = {{-0.25, -0.28125}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.5}, {0.03125, 0.125}}
  },
  {
  --type = "assembling-machine",
  type = "furnace",
  name = "basic-ddc",
  icon = "__PyBlock__/graphics/hr-basic-ddc.png",
  icon_size = 32,
  flags = {"placeable-neutral", "placeable-player", "player-creation"},
  --ingredient_count = 20,
  minable = {mining_time = 1, result = "basic-ddc"},
    max_health = 200,
    corpse = "medium-remnants",
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
    working_sound =
    {
      sound = { filename = "__base__/sound/furnace.ogg", }
    },
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "explosion",
        percent = 30
      },
      {
        type = "impact",
        percent = 30
      }
    },
	collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fluid_boxes =
    {
		{
		production_type = "output",
		--base_area = 10,
		base_level = 1,
		pipe_covers = pipecoverspictures(),
		pipe_connections =
		{
			{type = "output", position = {-1, -2} },
			--{ position = {2, 1} },
		}
		},
		{
		production_type = "output",
		--base_area = 10,
		base_level = 1,
		pipe_covers = pipecoverspictures(),
		pipe_connections =
		{
			{type = "output", position = {1, 2} },
			--{ position = {-2, -1} }
		}
		},
		off_when_no_fluid_recipe = true
    },
	crafting_categories = {"distilator"},
	crafting_speed = 0.5,
	result_inventory_size = 2,
    energy_usage = "150kW",
	source_inventory_size = 1,
	energy_source =
    {
      type = "burner",
      fuel_category = "chemical",
      effectivity = .25,
      fuel_inventory_size = 1,
      emissions = 0.01,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 5,
          position = {0.0, -0.8},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
      }
    },
	animation = make_2way_animation_from_spritesheet({ layers =
      {
        {
          filename = "__PyBlock__/graphics/hr-basic-ddc.png",
          priority = "extra-high",
          width = 219,
          height = 215,
          frame_count = 1,
          shift = util.by_pixel(0, 4),
          scale = 0.5,
          hr_version =
          {
            filename = "__PyBlock__/graphics/hr-basic-ddc.png",
            priority = "extra-high",
            width = 219,
            height = 215,
            frame_count = 1,
            shift = util.by_pixel(-0.25, 3.75),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/storage-tank/storage-tank-shadow.png",
          priority = "extra-high",
          width = 146,
          height = 77,
          frame_count = 1,
          shift = util.by_pixel(30, 22.5),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/storage-tank/hr-storage-tank-shadow.png",
            priority = "extra-high",
            width = 291,
            height = 153,
            frame_count = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(29.75, 22.25),
            scale = 0.5,
            draw_as_shadow = true
          }
        }
      }}),
    working_visualisations =
      {
        {
          north_position = {0.0, 0.0},
          east_position = {0.0, 0.0},
          south_position = {0.0, 0.0},
          west_position = {0.0, 0.0},
          animation =
          {
            filename = "__base__/graphics/entity/stone-furnace/stone-furnace-fire.png",
            priority = "extra-high",
            line_length = 8,
            width = 20,
            height = 49,
            frame_count = 48,
            axially_symmetrical = false,
            direction_count = 1,
            shift = util.by_pixel(2, 21.5),
            hr_version =
        {
              filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-fire.png",
              priority = "extra-high",
              line_length = 8,
              width = 41,
              height = 100,
              frame_count = 48,
              axially_symmetrical = false,
              direction_count = 1,
              shift = util.by_pixel(-0.75, 21.5),
              scale = 0.5
            }
          },
        light = {intensity = 1, size = 1, color = {r=1.0, g=1.0, b=1.0}}
        }
      },
    --fast_replaceable_group = "furnace"
  },
  
  {
    type = "assembling-machine",
    name = "starter-botanical-nursery",
    icon = "__pycoalprocessing__/graphics/icons/botanical-nursery.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "starter-botanical-nursery"},
    fast_replaceable_group = "botanical-nursery",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 0
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"starter-nursery"},
    crafting_speed = 1,
    energy_source = 
		{
      type = "void"
      --[[fuel_category = "chemical",
      effectivity = 10000,
      fuel_inventory_size = 1,
      emissions = 0.01,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 5,
          position = {0.0, -0.8},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
      }
	  ]]
    },
    energy_usage = "0.00001kW",
    ingredient_count = 20,
    animation = {
        filename = "__pycoalprocessing__/graphics/entity/botanical-nursery/botanical-nursery.png",
        width = 260,
        height = 254,
        line_length = 7,
        frame_count = 35,
        animation_speed = 0.4,
        run_mode = "forward-then-backward",
        shift = {0.1, 0.1}
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", {0.2, 4.13}, {0.12, -4.03}, {4.115, 0.1}, {-3.88, 0.16}, pipes),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, 4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", {0.2, 4.13}, {0.12, -4.03}, {4.115, 0.1}, {-3.88, 0.16}, pipes),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, -4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", {0.2, 4.13}, {0.12, -4.03}, {4.115, 0.1}, {-3.88, 0.16}, pipes),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {4.0, 0.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pycoalprocessing__/sounds/botanical-nursery.ogg", volume = 1.8},
        idle_sound = {filename = "__pycoalprocessing__/sounds/botanical-nursery.ogg", volume = 0.95},
        apparent_volume = 2.5
    }
	},
	
	{
    type = "assembling-machine",
    name = "burner-soil-extractor",
    icon = "__pycoalprocessing__/graphics/icons/soil-extractormk01.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "burner-soil-extractor"},
    fast_replaceable_group = "soil-extractormk01",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.48, -3.48}, {3.48, 3.48}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 0
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"soil-extraction"},
    crafting_speed = 0.3,
    energy_source =
    {
      type = "fluid",
      effectivity = 1,
      emissions = 1,
	  fluid_box =
		{
		base_area = 1,
		height = 2,
		base_level = -1,
		pipe_covers = pipecoverspictures(),
		pipe_connections =
			{
			{type = "input", position = {-4,0}},
			{type = "input", position = {4, 2} },
			{type = "input", position = {0, 4} },
			},
		production_type = "input",
		filter = "steam",
		},
		scale_fluid_usage = true,
    },
    energy_usage = "400kW",
    ingredient_count = 20,
    animation = {
        filename = "__pycoalprocessing__/graphics/entity/soil-extractormk01/soil-extractormk01.png",
        width = 235,
        height = 266,
        frame_count = 30,
        line_length = 6,
        animation_speed = 0.8,
        shift = {0.16, -0.609}
    },
    fluid_boxes = {
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", {0, 1}, {0, -1}, nil, nil, pipes),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {4.0, 0.0}}}
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pycoalprocessing__/sounds/soil-extractormk01.ogg"},
        idle_sound = {filename = "__pycoalprocessing__/sounds/soil-extractormk01.ogg", volume = 0.45},
        apparent_volume = 2.5
    }
},
{
    type = "assembling-machine",
    name = "burner-quenching-tower",
    icon = "__pycoalprocessing__/graphics/icons/quenching-tower.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "burner-quenching-tower"},
    fast_replaceable_group = "quenching-tower",
    max_health = 500,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 0
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"quenching-tower"},
    crafting_speed = 1,
    energy_source =
    {
      type = "fluid",
      effectivity = 1,
      emissions = 1,
	  fluid_box =
		{
		base_area = 1,
		height = 2,
		base_level = -1,
		pipe_covers = pipecoverspictures(),
		pipe_connections =
			{
			{type = "input", position = {-1,-4}}
			},
		filter = "steam",
		production_type = "input",
		},
		scale_fluid_usage = true,
    },
    energy_usage = "300kW",
    ingredient_count = 20,
    animation = {
        filename = "__pycoalprocessing__/graphics/entity/quenching-tower/quenching-tower-anim.png",
        width = 232,
        height = 252,
        frame_count = 60,
        line_length = 8,
        animation_speed = 0.7,
        shift = {0.08, 0.0}
    },
    fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", {1.08, 4.0}, {-0.82, -4.0}, nil, nil, pipes2),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {4.0, -1.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", {-0.82, 4.0}, {1.12, -4.0}, nil, nil, pipes),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {4.0, 1.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", {-0.82, 4.0}, {1.12, -4.0}, nil, nil, pipes),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-4.0, -1.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", {1.08, 4.0}, {-0.82, -4.0}, nil, nil, pipes2),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-4.0, 1.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", {-0.82, 4.0}, {1.12, -4.0}, nil, nil, pipes),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1.0, 4.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pycoalprocessing__/sounds/quenching-tower.ogg", volume = 0.42},
        idle_sound = {filename = "__pycoalprocessing__/sounds/quenching-tower.ogg", volume = 0.36},
        apparent_volume = 2.5
    }
},

{
    type = "assembling-machine",
    name = "burner-washer",
    icon = "__pycoalprocessing__/graphics/icons/washer.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "burner-washer"},
    fast_replaceable_group = "washer",
    max_health = 250,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.0, -3.0}, {3.0, 3.0}},
    selection_box = {{-3.1, -3.1}, {3.1, 3.1}},
    module_specification = {
        module_slots = 0
    },
    allowed_effects = {"consumption", "speed", "pollution"},
    crafting_categories = {"washer"},
    crafting_speed = 0.5,
    energy_source =
    {
      type = "fluid",
      effectivity = 1,
      emissions = 1,
	  fluid_box =
		{
		base_area = 1,
		height = 2,
		base_level = -1,
		pipe_covers = pipecoverspictures(),
		pipe_connections =
			{
			{type = "input", position = {-3.5,0.5}},
			{type = "input", position = {3.5, 0.5} }
			},
		filter = "steam",
		production_type = "input",
		},
		scale_fluid_usage = true,
    },
    energy_usage = "100kW",
    ingredient_count = 20,
    animation = {
        filename = "__pycoalprocessing__/graphics/entity/washer/washer.png",
        width = 204,
        height = 204,
        frame_count = 80,
        line_length = 10,
        animation_speed = 0.9,
        shift = {0.17, -0.17}
    },
    fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {1.17, 2.78}, {-0.05, -0.8}, nil, nil, pipes2),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.5, 3.5}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {-0.05, -0.8}, nil, nil, pipes),
            base_level = 1,
            pipe_connections = {{position = {0.5, -3.5}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pycoalprocessing__/sounds/washer.ogg", volume = 1.8},
        idle_sound = {filename = "__pycoalprocessing__/sounds/washer.ogg", volume = 1.5},
        apparent_volume = 1.8
    }
	},
	
	{
    type = "assembling-machine",
    name = "burner-wpu",
    icon = "__pycoalprocessing__/graphics/icons/wpu.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "burner-wpu"},
    fast_replaceable_group = "wpu",
    max_health = 800,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.8, -2.8}, {2.8, 2.8}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    module_specification = {
        module_slots = 0
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"wpu"},
    crafting_speed = 1,
    energy_source =
    {
      type = "fluid",
      effectivity = 1,
      emissions = 1,
	  fluid_box =
		{
		base_area = 1,
		height = 2,
		base_level = -1,
		pipe_covers = pipecoverspictures(),
		pipe_connections =
			{
			{type = "input", position = {-3.5,0.5}},
			{type = "input", position = {3.5, 0.5} },
			{type = "input", position = {0.5, 3.5} },
			},
		filter = "steam",
		production_type = "input",
		},
		scale_fluid_usage = true,
    },
    energy_usage = "150kW",
    ingredient_count = 20,
    animation = {
        layers = {
            {
                filename = "__pycoalprocessing__/graphics/entity/wpu/left.png",
                width = 96,
                height = 277,
                line_length = 21,
                frame_count = 130,
                shift = {-1.5, -1.328},
                animation_speed = 0.4
            },
            {
                filename = "__pycoalprocessing__/graphics/entity/wpu/right.png",
                width = 96,
                height = 277,
                line_length = 21,
                frame_count = 130,
                shift = {1.5, -1.328},
                animation_speed = 0.4
            }
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pycoalprocessing__/sounds/wpu.ogg", volume = 1.0},
        idle_sound = {filename = "__pycoalprocessing__/sounds/wpu.ogg", volume = 0.6},
        apparent_volume = 2.5
    }
}

  
}
)

data.raw["container"]["big-ship-wreck-1"].inventory_size = 10
data.raw["container"]["big-ship-wreck-2"].inventory_size = 10
data.raw["container"]["big-ship-wreck-3"].inventory_size = 10

table.insert(data.raw["assembling-machine"]["botanical-nursery"].crafting_categories,"nursery")
local burner = {
				  type = "void"--,
				  --[[fuel_category = "chemical",
				  effectivity = 10000,
				  fuel_inventory_size = 1,
				  emissions = 0.01,
				  smoke =
				  {
					{
					  name = "smoke",
					  deviation = {0.1, 0.1},
					  frequency = 5,
					  position = {0.0, -0.8},
					  starting_vertical_speed = 0.08,
					  starting_frame_deviation = 60
					}
				  }
				  ]]
				}
				
data.raw["furnace"]["py-sinkhole"].energy_source = burner
data.raw["furnace"]["py-gas-vent"].energy_source = burner
    

--Add minablity to crashed ship parts
table.insert(data.raw["container"]["big-ship-wreck-1"],minable)
table.insert(data.raw["container"]["big-ship-wreck-2"],minable)
table.insert(data.raw["container"]["big-ship-wreck-3"],minable)
table.insert(data.raw["simple-entity"]["medium-ship-wreck"],minable)
table.insert(data.raw["simple-entity"]["small-ship-wreck"],minable)


local minableinfo = 
		{
		mining_particle = "stone-particle",
		mining_time = 4,
		results = {{name = "scrap-iron", amount_min = 400, amount_max = 800}, {name = "scrap-copper", amount_min = 50, amount_max = 150}},
		}
		
		
data.raw["container"]["big-ship-wreck-1"].minable = minableinfo

--log(serpent.block(data.raw["container"]["big-ship-wreck-1"]))

--table.insert(data.raw["container"]["big-ship-wreck-1"].minable,minableinfo)
data.raw["container"]["big-ship-wreck-2"].minable=minableinfo
data.raw["container"]["big-ship-wreck-3"].minable=minableinfo
data.raw["simple-entity"]["medium-ship-wreck"].minable=minableinfo
data.raw["simple-entity"]["small-ship-wreck"].minable=minableinfo

--data.raw["simple-entity"]["medium-ship-wreck"].minable = minable

--log(serpent.block(data.raw["simple-entity"]["medium-ship-wreck"]))
	

fun.ingredient_replace("burner-mining-drill","iron-plate","pb-wrought-iron-plate")
fun.ingredient_replace("burner-mining-drill","iron-gear-wheel","wrought-iron-gear-wheel")
fun.ingredient_replace("offshore-pump","pipe","wrought-iron-pipe")
fun.ingredient_replace("offshore-pump","iron-gear-wheel","wrought-iron-gear-wheel")
--fun.ingredient_replace("steam-engine","iron-gear-wheel","wrought-iron-gear-wheel")
--fun.ingredient_replace("steam-engine","pipe","wrought-iron-pipe")
--fun.ingredient_replace("steam-engine","iron-plate","pb-wrought-iron-plate")
--fun.ingredient_replace("boiler","pipe","wrought-iron-pipe")
fun.ingredient_replace("burner-inserter","iron-plate","pb-wrought-iron-plate")
fun.ingredient_replace("burner-inserter","iron-gear-wheel","wrought-iron-gear-wheel")
--fun.ingredient_replace("wpu","iron-plate","pb-wrought-iron-plate")
--fun.ingredient_replace("wpu","iron-gear-wheel","wrought-iron-gear-wheel")
--fun.ingredient_replace("washer","iron-plate","pb-wrought-iron-plate")
--fun.ingredient_replace("washer","pipe","wrought-iron-pipe")
fun.ingredient_replace("boiler","pipe","wrought-iron-pipe")

--replaced with the steam energy source as i always planned
--[[
local famount = fluid_amount
local rfluid = required_fluid

table.insert(data.raw.resource["iron-rock"].minable, famount)
table.insert(data.raw.resource["iron-rock"].minable, rfluid)

data.raw.resource["iron-rock"].minable.fluid_amount = 100
data.raw.resource["iron-rock"].minable.required_fluid = "steam"
]]--
--log(serpent.block(data.raw.resource["iron-rock"].minable))