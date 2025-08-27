RECIPE {
  type = "recipe",
  name = "wpu-mk00",
  energy_required = 5,
  enabled = true,
  ingredients = {
    {type = "item", name = "log",             amount = 12},
    {type = "item", name = "iron-plate",      amount = 20},
    {type = "item", name = "iron-gear-wheel", amount = 15},
    {type = "item", name = "steam-engine",    amount = 1},
    {type = "item", name = "stone-furnace",   amount = 1},
    {type = "item", name = "copper-cable",    amount = 30}
  },
  results = {
    {type = "item", name = "wpu-mk00", amount = 1}
  }
}:add_unlock("automation-science-pack")

ITEM {
  type = "item",
  name = "wpu-mk00",
  icon = "__PyBlock__/graphics/icons/wpu-mk00.png",
  icon_size = 64,
  flags = {},
  subgroup = "py-cp-buildings-mk00",
  order = "c",
  place_result = "wpu-mk00",
  stack_size = 10
}

require "make_copy" ("wpu"):set_fields{
  crafting_categories = {"wpu", "wpu-handcrafting"},
  energy_source = {
    type = "fluid",
    effectivity = 1,
    emissions = 1,
    fluid_box = {
      volume = 200,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        {flow_direction = "input-output", direction = 12, position = {-2.5, 0.5}},
        {flow_direction = "input-output", direction = 4,  position = {2.5, 0.5}},
      },
      filter = "steam",
      production_type = "input-output",
    },
    scale_fluid_usage = true,
  },
  energy_usage = "350kW"
}