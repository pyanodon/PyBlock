require "make_rig" (
  "geothermal-plant-mk01",
  {
    { flow_direction = "input-output", position = {5, 2}, direction = defines.direction.east },
    { flow_direction = "input-output", position = {5, -2}, direction = defines.direction.east },
    { flow_direction = "input-output", position = {-5, 2}, direction = defines.direction.west },
    { flow_direction = "input-output", position = {-5, -2}, direction = defines.direction.west },
  },
  100,
  "geowater"
)

ENTITY("geothermal-plant-mk01").fixed_recipe = "geothermal-drilling"

require "make_borehole" ("geothermal-crack")

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