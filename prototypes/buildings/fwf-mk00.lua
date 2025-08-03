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
}:add_unlock("fwf")

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

require "make_copy" ("fwf-mk01", "fwf-mk00"):set_fields{
  -- icon = "__PyBlock__/graphics/icons/fwf-mk00.png",
  -- icon_size = 32,
  crafting_speed = data.raw["assembling-machine"]["fwf-mk01"].crafting_speed * 0.2,
  energy_usage = "80kW",
  energy_source = {
    type = "void",
    usage_priority = "secondary-input",
    emissions_per_minute = {pollution = -10},
  }
}