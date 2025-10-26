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
}:add_unlock("wood-processing-0")

ITEM {
  type = "item",
  name = "fwf-mk00",
  icon = "__PyBlock__/graphics/icons/fwf-mk00.png",
  flags = {},
  subgroup = "py-alienlife-buildings-mk00",
  order = "e",
  place_result = "fwf-mk00",
  stack_size = 10
}

require "make_copy" ("fwf"):set_fields{
  energy_usage = "212kW",
  energy_source = {
    type = "fluid",
    effectivity = 0.5,
    fluid_box = {
      volume = 200,
      pipe_covers = py.pipe_covers(false, true, true, true),
      pipe_picture = data.raw["assembling-machine"]["fwf-mk01"].fluid_boxes[1].pipe_picture,
      pipe_connections = {
        {flow_direction = "input", position = {-5.0, 7.0}, direction = defines.direction.south},
        {flow_direction = "input", position = {5.0, 7.0}, direction = defines.direction.south}
      },
      filter = "steam"
    },
    emissions_per_minute = {pollution = -10},
    minimum_temperature = 250,
    scale_fluid_usage = true
  },
  allowed_module_categories = {"tree"}
}