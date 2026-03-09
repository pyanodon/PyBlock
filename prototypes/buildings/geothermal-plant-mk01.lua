require "make_borehole" ("geothermal-plant-mk01",{
  { flow_direction = "input-output", position = {5, 2}, direction = defines.direction.east },
  { flow_direction = "input-output", position = {5, -2}, direction = defines.direction.east },
  { flow_direction = "input-output", position = {-5, 2}, direction = defines.direction.west },
  { flow_direction = "input-output", position = {-5, -2}, direction = defines.direction.west },
})

-- add extra fluidboxes to regenrative heat exchanger
data.raw["assembling-machine"].rhe.fluid_boxes = {
  {
    production_type = "input",
    pipe_covers = py.pipe_covers(false, true, true, true),
    volume = 1000,
    pipe_connections = {{flow_direction = "input", position = {0.0, -1.95}, direction = defines.direction.north}}
  },
  {
    production_type = "input",
    pipe_covers = py.pipe_covers(false, true, true, true),
    volume = 1000,
    pipe_connections = {{flow_direction = "input", position = {1.95, 0.0}, direction = defines.direction.east}}
  },
  {
    production_type = "output",
    pipe_covers = py.pipe_covers(false, true, true, true),
    volume = 100,
    pipe_connections = {{flow_direction = "output", position = {0.0, 1.95}, direction = defines.direction.south}}
  }
}

-- slow down geowater->steam recipe, and add more ingredients
RECIPE("geo-he-00"):set_fields {
  energy_required = 10,
  ingredients = {
    {type = "fluid", name = "geothermal-water", amount = 180, minimum_temperature = 950},
    {type = "fluid", name = "water",            amount = 400}
  },
  results = {
    {type = "fluid", name = "steam",             amount = 320, temperature = 500}
  }
}

data.raw.resource["geothermal-crack"].minable.fluid_amount = 0
data.raw.resource["geothermal-crack"].minable.required_fluid = nil

-- copy of geothermal crack to represent drilling
data:extend {{
    type = "resource",
    name = "geothermal-crack-borehole",
    category = "geothermal-crack",
    icon = "__pyalternativeenergygraphics__/graphics/icons/geothermal-crack.png",
    icon_size = 64,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.639, g = 0.074, b = 0.007},
    highlight = true,
    map_grid = false,
    minable = {
        mining_time = 1,
        results = {},
        required_fluid = "pressured-water",
        fluid_amount = 100
    },
    resource_patch_search_radius = 12,
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    collision_mask = {layers = {resource = true}},
    stage_counts = {0},
    stages = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/ore/geothermal-crack/geothermal-crack.png",
                priority = "extra-high",
                width = 352,
                height = 352,
                frame_count = 1,
                variation_count = 1,
                shift = util.by_pixel(0, 0)
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/ore/geothermal-crack/glow.png",
                priority = "extra-high",
                draw_as_glow = true,
                width = 352,
                height = 352,
                frame_count = 1,
                variation_count = 1,
                shift = util.by_pixel(0, 0)
            }
        }
    }
}}
