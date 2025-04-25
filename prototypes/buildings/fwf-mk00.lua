RECIPE {
    type = "recipe",
    name = "fwf-mk00",
    energy_required = 1,
    enabled = true,
    ingredients = {
        {type = "item", name = "stone-brick",     amount = 50},
        {type = "item", name = "iron-plate",      amount = 25},
        {type = "item", name = "pipe",            amount = 5},
        {type = "item", name = "copper-cable",    amount = 2},
        {type = "item", name = "iron-gear-wheel", amount = 20},
    },
    results = {
        {type = "item", name = "fwf-mk00", amount = 1}
    }
}

ITEM {
    type = "item",
    name = "fwf-mk00",
    icon = "__PyBlock__/graphics/icons/fwf-mk00.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-alienlife-buildings-mk00",
    order = "e",
    place_result = "fwf-mk00",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "fwf-mk00",
    icon = "__PyBlock__/graphics/icons/fwf-mk00.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "fwf-mk00"},
    fast_replaceable_group = "fwf",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.1, -5.1}, {5.1, 5.1}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    --fixed_recipe = 'log0',
    module_specification = {
        module_slots = 12
    },
    allowed_effects = {},
    crafting_categories = {"fwf-basic", "fwf"},
    crafting_speed = 0.1,
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
                {type = "input-output", position = {-6, 1}},
                {type = "input-output", position = {6, 1}},
            },
            filter = "steam",
            production_type = "input-output",
        },
        scale_fluid_usage = true,
    },
    energy_usage = "100kW",
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fwf/base.png",
                width = 352,
                height = 32,
                line_length = 5,
                frame_count = 136,
                animation_speed = 0.4,
                shift = util.by_pixel(0, 160)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fwf/f1.png",
                width = 64,
                height = 384,
                line_length = 32,
                frame_count = 136,
                animation_speed = 0.4,
                shift = util.by_pixel(-144, -48)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fwf/f2.png",
                width = 64,
                height = 384,
                line_length = 32,
                frame_count = 136,
                animation_speed = 0.4,
                shift = util.by_pixel(-80, -48)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fwf/f3.png",
                width = 64,
                height = 384,
                line_length = 32,
                frame_count = 136,
                animation_speed = 0.4,
                shift = util.by_pixel(-16, -48)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fwf/f4.png",
                width = 64,
                height = 384,
                line_length = 32,
                frame_count = 136,
                animation_speed = 0.4,
                shift = util.by_pixel(48, -48)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fwf/f5.png",
                width = 64,
                height = 384,
                line_length = 32,
                frame_count = 136,
                animation_speed = 0.4,
                shift = util.by_pixel(112, -48)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fwf/f6.png",
                width = 32,
                height = 384,
                line_length = 32,
                frame_count = 136,
                animation_speed = 0.4,
                shift = util.by_pixel(160, -48)
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
            pipe_connections = {{type = "input", position = {1.0, 6.0}}}
        },
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.0, 6.0}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.0, -6.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/fwf.ogg", volume = 0.80},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/fwf.ogg", volume = 0.55},
        apparent_volume = 2.5
    }
}
