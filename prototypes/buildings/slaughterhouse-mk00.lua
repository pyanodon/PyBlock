RECIPE {
    type = "recipe",
    name = "slaughterhouse-mk00",
    energy_required = 1,
    enabled = true,
    ingredients = {
        {"stone-brick", 30},
        {"pipe", 20},
        {"electronic-circuit", 1},
        {"iron-gear-wheel", 30},
        {"glass", 5},
    },
    results = {
        {"slaughterhouse-mk00", 1}
    }
}

ITEM {
    type = "item",
    name = "slaughterhouse-mk00",
    icon = "__PyBlock__/graphics/icons/slaugterhouse-mk00.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk00",
    order = "a",
    place_result = "slaughterhouse-mk00",
    stack_size = 10
}

ENTITY {
    type = 'assembling-machine',
    name = "slaughterhouse-mk00",
    icon = "__PyBlock__/graphics/icons/slaugterhouse-mk00.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "slaughterhouse-mk00"},
    fast_replaceable_group = "slaughterhouse",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.1, -5.1}, {5.1, 5.1}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"slaughterhouse","slaughterhouse-auog","slaughterhouse-ulric","slaughterhouse-mukmoux","slaughterhouse-arthurian","slaughterhouse-dhilmos","slaughterhouse-scrondrix","slaughterhouse-phadai","slaughterhouse-fish","slaughterhouse-phagnot","slaughterhouse-kmauts","slaughterhouse-dingrits","slaughterhouse-xeno","slaughterhouse-cridren","slaughterhouse-antelope","slaughterhouse-zipir","slaughterhouse-trits","slaughterhouse-vonix","slaughterhouse-vrauks","slaughterhouse-xyhiphoe","slaughterhouse-korlex"},
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
            {type = "input-output", position = {-6,0}},
            {type = "input-output", position = {6, 0} },
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
                filename = "__pyalienlifegraphics2__/graphics/entity/slaughterhouse/base.png",
                width = 384,
                height = 32,
                line_length = 5,
                frame_count = 105,
                animation_speed = 0.3,
                run_mode = "backward",
                shift = util.by_pixel(16, 160)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/slaughterhouse/a1.png",
                width = 96,
                height = 324,
                line_length = 21,
                frame_count = 105,
                animation_speed = 0.3,
                --run_mode = "backward",
                shift = util.by_pixel(-128, -18)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/slaughterhouse/a1-mask.png",
                width = 96,
                height = 324,
                line_length = 21,
                frame_count = 105,
                animation_speed = 0.3,
                run_mode = "backward",
                shift = util.by_pixel(-128, -18),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/slaughterhouse/a2.png",
                width = 96,
                height = 324,
                line_length = 21,
                frame_count = 105,
                animation_speed = 0.3,
                run_mode = "backward",
                shift = util.by_pixel(-32, -18)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/slaughterhouse/a2-mask.png",
                width = 96,
                height = 324,
                line_length = 21,
                frame_count = 105,
                animation_speed = 0.3,
                run_mode = "backward",
                shift = util.by_pixel(-32, -18),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/slaughterhouse/a3.png",
                width = 96,
                height = 324,
                line_length = 21,
                frame_count = 105,
                animation_speed = 0.3,
                --run_mode = "backward",
                shift = util.by_pixel(64, -18)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/slaughterhouse/a3-mask.png",
                width = 96,
                height = 324,
                line_length = 21,
                frame_count = 105,
                animation_speed = 0.3,
                --run_mode = "backward",
                shift = util.by_pixel(64, -18),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/slaughterhouse/a4.png",
                width = 96,
                height = 324,
                line_length = 21,
                frame_count = 105,
                --run_mode = "backward",
                animation_speed = 0.3,
                shift = util.by_pixel(160, -18)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/slaughterhouse/a4-mask.png",
                width = 96,
                height = 324,
                line_length = 21,
                frame_count = 105,
                --run_mode = "backward",
                animation_speed = 0.3,
                shift = util.by_pixel(160, -18),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
        }
    },

    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.0, 6.0}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.0, -6.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/slaughterhouse.ogg", volume = 1.15},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/slaughterhouse.ogg", volume = 0.75},
        apparent_volume = 2.5
    }
}
