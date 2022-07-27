
RECIPE {
    type = "recipe",
    name = "burner-quenching-tower",
    energy_required = 5,
    enabled = true,
    ingredients = {
        --{"landfill", 25},
        {"iron-plate", 25},
        --{"pipe", 10},
        --{"copper-plate", 10}
    },
    results = {
        {"burner-quenching-tower", 1}
    }
}

ITEM {
    type = "item",
    name = "burner-quenching-tower",
    icon = "__PyBlock__/graphics/icons/quenching-tower-mk00.png",
    icon_size = 64,
    flags = {},
    subgroup = "coal-processing",
    order = "u",
    place_result = "burner-quenching-tower",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "burner-quenching-tower",
    icon = "__PyBlock__/graphics/icons/quenching-tower-mk00.png",
    icon_size = 64,
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
		production_type = "input-output",
		},
		scale_fluid_usage = true,
    },
    energy_usage = "300kW",
    animation = {
        filename = "__pycoalprocessinggraphics__/graphics/entity/quenching-tower/quenching-tower-anim.png",
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
        sound = {filename = "__pycoalprocessinggraphics__/sounds/quenching-tower.ogg", volume = 0.42},
        idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/quenching-tower.ogg", volume = 0.36},
        apparent_volume = 2.5
    }
}
