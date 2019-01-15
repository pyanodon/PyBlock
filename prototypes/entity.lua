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
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    mining_speed = 1.94,
    energy_source =
    {
      type = "burner",
      fuel_category = "mega-drill-head",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions = 0.1,
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
    minable = {hardness = 0.2, mining_time = 0.5, result = "pipe"},
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
	crafting_speed = 1,
	result_inventory_size = 4,
    energy_usage = "150kW",
	source_inventory_size = 1,
	energy_source =
    {
      type = "burner",
      fuel_category = "chemical",
      effectivity = 1,
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
	animation =
    {
    layers =
      {
        {
        filename = "__PyBlock__/graphics/hr-basic-ddc.png",
        priority = "extra-high",
        width = 57.25,
        height = 56.25,
        frame_count = 1,
        --shift = util.by_pixel(0, 4),
        hr_version =
        {
          filename = "__PyBlock__/graphics/hr-basic-ddc.png",
          priority = "extra-high",
          width = 219,
          height = 215,
          frame_count = 1,
          --shift = util.by_pixel(-0.25, 3.75),
          scale = 0.5
          }
        },
        {
        filename = "__base__/graphics/entity/stone-furnace/stone-furnace-shadow.png",
        priority = "extra-high",
        width = 81,
        height = 64,
        frame_count = 1,
        draw_as_shadow = true,
        shift = {0.515625, 0.0625},
        hr_version =
        {
          filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-shadow.png",
          priority = "extra-high",
          width = 164,
          height = 74,
          frame_count = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(14.5, 13),
          scale = 0.5
          }
        }
      }
    },
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
  }
  
}
)

--Add minablity to crashed ship parts
table.insert(data.raw["simple-entity"]["big-ship-wreck-1"],minable)
table.insert(data.raw["simple-entity"]["big-ship-wreck-2"],minable)
table.insert(data.raw["simple-entity"]["big-ship-wreck-3"],minable)
table.insert(data.raw["simple-entity"]["medium-ship-wreck"],minable)
table.insert(data.raw["simple-entity"]["small-ship-wreck"],minable)


local minable = 
		{
		mining_particle = "stone-particle",
		mining_time = 8,
		results = {{name = "pb-wrought-iron-plate", amount_min = 25, amount_max = 75}, {name = "copper-plate", amount_min = 24, amount_max = 75}},
		}
		
table.insert(data.raw["simple-entity"]["big-ship-wreck-1"].minable,minable)
table.insert(data.raw["simple-entity"]["big-ship-wreck-2"].minable,minable)
table.insert(data.raw["simple-entity"]["big-ship-wreck-3"].minable,minable)
table.insert(data.raw["simple-entity"]["medium-ship-wreck"].minable,minable)
table.insert(data.raw["simple-entity"]["small-ship-wreck"].minable,minable)

--data.raw["simple-entity"]["medium-ship-wreck"].minable = minable

log(serpent.block(data.raw["simple-entity"]["medium-ship-wreck"]))
	

ingredient_replace("burner-mining-drill","iron-plate","pb-wrought-iron-plate")
ingredient_replace("burner-mining-drill","iron-gear-wheel","wrought-iron-gear-wheel")
ingredient_replace("offshore-pump","pipe","wrought-iron-pipe")
ingredient_replace("offshore-pump","iron-gear-wheel","wrought-iron-gear-wheel")
ingredient_replace("steam-engine","iron-gear-wheel","wrought-iron-gear-wheel")
ingredient_replace("steam-engine","pipe","wrought-iron-pipe")
ingredient_replace("steam-engine","iron-plate","pb-wrought-iron-plate")
ingredient_replace("boiler","pipe","wrought-iron-pipe")
ingredient_replace("burner-inserter","iron-plate","pb-wrought-iron-plate")
ingredient_replace("burner-inserter","iron-gear-wheel","wrought-iron-gear-wheel")
ingredient_replace("wpu","iron-plate","pb-wrought-iron-plate")
ingredient_replace("wpu","iron-gear-wheel","wrought-iron-gear-wheel")
ingredient_replace("washer","iron-plate","pb-wrought-iron-plate")
ingredient_replace("washer","pipe","wrought-iron-pipe")




local famount = fluid_amount
local rfluid = required_fluid

table.insert(data.raw.resource["iron-rock"].minable, famount)
table.insert(data.raw.resource["iron-rock"].minable, rfluid)

data.raw.resource["iron-rock"].minable.fluid_amount = 100
data.raw.resource["iron-rock"].minable.required_fluid = "steam"

--log(serpent.block(data.raw.resource["iron-rock"].minable))