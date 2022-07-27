
RECIPE {
    type = "recipe",
    name = "burner-wpu",
    energy_required = 5,
    enabled = true,
    ingredients = {
        --{"wood", 20},
        {"iron-plate", 20},
        {"iron-gear-wheel", 15},
        {"burner-mining-drill", 2},
        {"copper-cable", 5}
    },
    results = {
        {"burner-wpu", 1}
    }
}

ITEM {
    type = "item",
    name = "burner-wpu",
    icon = "__PyBlock__/graphics/icons/wpu-mk00.png",
    icon_size = 64,
    flags = {},
    subgroup = "coal-processing",
    order = "c",
    place_result = "burner-wpu",
    stack_size = 10
	}

ENTITY {
    type = "assembling-machine",
    name = "burner-wpu",
    icon = "__PyBlock__/graphics/icons/wpu-mk00.png",
    icon_size = 64,
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
			{type = "input-output", position = {-3.5,0.5}},
			{type = "input-output", position = {3.5, 0.5} },
			{type = "input-output", position = {0.5, 3.5} },
			},
		filter = "steam",
		production_type = "input-output",
		},
		scale_fluid_usage = true,
    },
    energy_usage = "150kW",
    animation = {
        layers = {
            {
                filename = "__pycoalprocessinggraphics__/graphics/entity/wpu/left.png",
                width = 96,
                height = 277,
                line_length = 21,
                frame_count = 130,
                shift = {-1.5, -1.328},
                animation_speed = 0.4
            },
            {
                filename = "__pycoalprocessinggraphics__/graphics/entity/wpu/right.png",
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
        sound = {filename = "__pycoalprocessinggraphics__/sounds/wpu.ogg", volume = 1.0},
        idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/wpu.ogg", volume = 0.6},
        apparent_volume = 2.5
    }
}
