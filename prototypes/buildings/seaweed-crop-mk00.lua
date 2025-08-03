RECIPE {
  type = "recipe",
  name = "seaweed-crop-mk00",
  energy_required = 1,
  enabled = false,
  ingredients = {
    {type = "item", name = "stone-brick", amount = 20},
    {type = "item", name = "pipe", amount = 5},
    {type = "item", name = "iron-gear-wheel", amount = 5},
    {type = "item", name = "iron-plate", amount = 15}
  },
  results = {
    {type = "item", name = "seaweed-crop-mk00", amount = 1}
  }
}:add_unlock("seaweed-mk00")

ITEM {
  type = "item",
  name = "seaweed-crop-mk00",
  icon = "__PyBlock__/graphics/icons/seaweed-crop-mk00.png",
  icon_size = 64,
  flags = {},
  subgroup = "py-alienlife-buildings-mk00",
  order = "e",
  place_result = "seaweed-crop-mk00",
  stack_size = 10
}

require "make_copy" ("seaweed-crop-mk01", "seaweed-crop-mk00"):set_fields{
  icon = "__PyBlock__/graphics/icons/seaweed-crop-mk00.png",
  icon_size = 64,
  crafting_speed = data.raw["assembling-machine"]["seaweed-crop-mk01"].crafting_speed * 0.2,
  energy_usage = "150kW",
  energy_source = {
    type = "void",
    usage_priority = "secondary-input",
    emissions_per_minute = {pollution = -5},
  },
  allowed_module_categories = {"seaweed"},
  fixed_recipe = "seaweed-1"
}