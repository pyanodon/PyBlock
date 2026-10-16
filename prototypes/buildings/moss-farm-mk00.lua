RECIPE {
  type = "recipe",
  name = "moss-farm-mk00",
  energy_required = 1,
  enabled = true,
  ingredients = {
      {type = "item", name = "stone-brick",     amount = 20},
      {type = "item", name = "pipe",            amount = 8},
      {type = "item", name = "iron-plate",      amount = 8},
      {type = "item", name = "soil",            amount = 30},
      {type = "item", name = "inductor1",       amount = 2},
  },
  results = {
      {type = "item", name = "moss-farm-mk00", amount = 1}
  }
}:add_unlock("moss-mk00")

ITEM {
type = "item",
name = "moss-farm-mk00",
icon = "__PyBlock__/graphics/icons/moss-farm-mk00.png",
icon_size = 32,
flags = {},
subgroup = "py-alienlife-buildings-mk00",
order = "e",
place_result = "moss-farm-mk00",
stack_size = 10
}

require "make_copy" ("moss-farm"):set_fields{
energy_usage = "93kW",
energy_source = {
  type = "fluid",
  effectivity = 0.5,
  fluid_box = {
    volume = 200,
    pipe_covers = py.pipe_covers(false, true, true, true),
    pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
    pipe_connections = {
      {flow_direction = "input-output", position = {-2.5, 1.5}, direction = defines.direction.west},
      {flow_direction = "input-output", position = {2.5, 1.5}, direction = defines.direction.east}
    },
    filter = "steam"
  },
  emissions_per_minute = {pollution = -10},
  minimum_temperature = 250,
  scale_fluid_usage = true
},
allowed_module_categories = {"moss"}
}