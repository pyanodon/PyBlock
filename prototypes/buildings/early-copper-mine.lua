RECIPE {
    type = "recipe",
    name = "early-copper-mine",
    energy_required = 2,
    enabled = true,
    ingredients = {
        {"assembling-machine-1", 2},
        {"burner-mining-drill", 2},
		{"wrought-iron-gear-wheel", 25},
		{"wrought-iron-pipe", 10},
        {"pb-wrought-iron-plate", 50},
        {"electronic-circuit", 20}
    },
    results = {
        {"early-copper-mine", 1}
    }
}

ITEM {
    type = "item",
    name = "early-copper-mine",
    icon = "__PyBlock__/graphics/icons/mega-copper-00.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-rawores-mines",
    order = "a",
    place_result = "early-copper-mine",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "early-copper-mine",
    icon = "__PyBlock__/graphics/icons/mega-copper-00.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "early-copper-mine"},
    fast_replaceable_group = "copper-mine",
    max_health = 600,
    resource_categories = {"copper-rock"},
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-6.3, -6.3}, {6.3, 6.3}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
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
            {type = "input-output", position = {-7,0}},
            {type = "input-output", position = {7, 0} },
            {type = "input-output", position = {0, 7} },
            },
          filter = "steam",
          production_type = "input-output",
        },
		scale_fluid_usage = true,
    },
    energy_usage = "2500kW",
    mining_power = 3,
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
                filename = "__pyraworesgraphics__/graphics/entity/copper-mine/c1.png",
                width = 96,
                height = 448,
                line_length = 20,
                frame_count = 80,
                animation_speed = 0.2,
                shift = util.by_pixel(-160, -16)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/copper-mine/c2.png",
                width = 96,
                height = 448,
                line_length = 20,
                frame_count = 80,
                animation_speed = 0.2,
                shift = util.by_pixel(-64, -16)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/copper-mine/c3.png",
                width = 96,
                height = 448,
                line_length = 20,
                frame_count = 80,
                animation_speed = 0.2,
                shift = util.by_pixel(32, -16)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/copper-mine/c4.png",
                width = 96,
                height = 448,
                line_length = 20,
                frame_count = 80,
                animation_speed = 0.2,
                shift = util.by_pixel(128, -16)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/copper-mine/c5.png",
                width = 32,
                height = 448,
                line_length = 20,
                frame_count = 80,
                animation_speed = 0.2,
                shift = util.by_pixel(192, -16)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/copper-mine/s1.png",
                width = 96,
                height = 363,
                line_length = 20,
                frame_count = 80,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(-136, 14)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/copper-mine/s2.png",
                width = 96,
                height = 363,
                line_length = 20,
                frame_count = 80,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(-40, 14)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/copper-mine/s3.png",
                width = 96,
                height = 363,
                line_length = 20,
                frame_count = 80,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(56, 14)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/copper-mine/s4.png",
                width = 96,
                height = 363,
                line_length = 20,
                frame_count = 80,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(152, 14)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/copper-mine/s5.png",
                width = 31,
                height = 363,
                line_length = 20,
                frame_count = 80,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(168, 14)
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyraworesgraphics__/sounds/copper-mine.ogg", volume = 1.3},
        idle_sound = {filename = "__pyraworesgraphics__/sounds/copper-mine.ogg", volume = 0.8},
        apparent_volume = 2.5
    }
}
