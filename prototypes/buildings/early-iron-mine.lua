RECIPE {
    type = "recipe",
    name = "cheap-iron-mine",
    energy_required = 10,
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
        {"cheap-iron-mine", 1}
    }
}

ITEM {
    type = "item",
    name = "cheap-iron-mine",
    icon = "__PyBlock__/graphics/icons/mega-iron-00.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-rawores-mines",
    order = "a",
    place_result = "cheap-iron-mine",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "cheap-iron-mine",
    icon = "__PyBlock__/graphics/icons/mega-iron-00.png",
	  icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "cheap-iron-mine"},
    fast_replaceable_group = "iron-mine",
    max_health = 600,
    resource_categories = {"iron-rock"},
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
                filename = "__pyraworesgraphics__/graphics/entity/iron-mine/botleft.png",
                width = 128,
                height = 128,
                line_length = 16,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(-144, 112)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/iron-mine/botmid.png",
                width = 128,
                height = 128,
                line_length = 16,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(-16, 112)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/iron-mine/botright.png",
                width = 128,
                height = 128,
                line_length = 16,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(112, 112)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/iron-mine/midleft.png",
                width = 128,
                height = 128,
                line_length = 16,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(-144, -16)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/iron-mine/midmid.png",
                width = 128,
                height = 128,
                line_length = 16,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(-16, -16)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/iron-mine/midright.png",
                width = 128,
                height = 128,
                line_length = 16,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(112, -16)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/iron-mine/topleft.png",
                width = 128,
                height = 128,
                line_length = 16,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(-144, -144)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/iron-mine/topmid.png",
                width = 128,
                height = 128,
                line_length = 16,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(-16, -144)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/iron-mine/topright.png",
                width = 128,
                height = 128,
                line_length = 16,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(112, -144)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/iron-mine/botline.png",
                width = 416,
                height = 32,
                line_length = 4,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(0, 192)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/iron-mine/rightline.png",
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
        sound = {filename = "__pyraworesgraphics__/sounds/iron-mine.ogg", volume = 1.0},
        idle_sound = {filename = "__pyraworesgraphics__/sounds/iron-mine.ogg", volume = 0.7},
        apparent_volume = 2.5
    }
}
