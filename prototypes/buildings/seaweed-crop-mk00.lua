RECIPE {
  type = "recipe",
  name = "seaweed-crop-mk00",
  energy_required = 1,
  enabled = true,
  ingredients = {
      {"stone-brick", 20},
      {"pipe", 5},
      {"small-parts-01", 5},
      {"iron-plate", 15},
  },
  results = {
      {"seaweed-crop-mk00", 1}
  }
}

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

require "make_copy" ("seaweed", "seaweed-crop-mk00"):add_unlock("seaweed"):set_fields{
  icon = "__PyBlock__/graphics/icons/seaweed-crop-mk00.png",
  crafting_speed = data.raw["assembling-machine"]["seaweed-crop"].crafting_speed * 0.2,
  energy_usage = "150kW",
  energy_source = {
    type = "void",
    usage_priority = "secondary-input",
    emissions_per_minute = -25,
  }
}