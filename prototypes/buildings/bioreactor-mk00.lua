RECIPE {
    type = "recipe",
    name = "bio-reactor-mk00",
    energy_required = 1,
    enabled = true,
    ingredients = {
        {type = "item", name = "steam-engine",     amount = 4},
        {type = "item", name = "spore-collector-mk00",      amount = 1},
        {type = "item", name = "stone-brick",            amount = 40},
        {type = "item", name = "iron-gear-wheel", amount = 20},
        {type = "item", name = "steel-plate",    amount = 20},
        {type = "item", name = "glass",    amount = 15},
    },
    results = {
        {type = "item", name = "bio-reactor-mk00", amount = 1}
    }
}:add_unlock("water-invertebrates-mk00")

ITEM {
  type = "item",
  name = "bio-reactor-mk00",
  icon = "__PyBlock__/graphics/icons/bio-reactor-mk00.png",
  flags = {},
  subgroup = "py-alienlife-buildings-mk00",
  order = "e",
  place_result = "bio-reactor-mk00",
  stack_size = 10
}

require "make_copy" ("bio-reactor"):set_fields{
  energy_usage = "400kW",
  energy_source = {
    type = "fluid",
    effectivity = 0.5,
    fluid_box = {
      volume = 200,
      pipe_covers = py.pipe_covers(false, true, true, true),
      pipe_picture = data.raw["assembling-machine"]["bio-reactor-mk01"].fluid_boxes[1].pipe_picture,
      pipe_connections = {
        {flow_direction = "input-output", position = {-3, 0}, direction = defines.direction.west},
        {flow_direction = "input-output", position = {3, 0}, direction = defines.direction.east}
      },
      filter = "steam"
    },
    emissions_per_minute = {pollution = -10},
    minimum_temperature = 250,
    scale_fluid_usage = true
  },
}