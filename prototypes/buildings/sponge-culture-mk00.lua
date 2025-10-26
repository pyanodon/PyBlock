RECIPE {
    type = "recipe",
    name = "sponge-culture-mk00",
    energy_required = 1,
    enabled = true,
    ingredients = {
        {type = "item", name = "steam-engine",     amount = 2},
        {type = "item", name = "gasifier",      amount = 1},
        {type = "item", name = "iron-gear-wheel", amount = 20},
        {type = "item", name = "steel-plate",            amount = 10},
        {type = "item", name = "glass",    amount = 15},
        {type = "item", name = "stone-brick",    amount = 30},
    },
    results = {
        {type = "item", name = "sponge-culture-mk00", amount = 1}
    }
}:add_unlock("water-invertebrates-mk00")

ITEM {
  type = "item",
  name = "sponge-culture-mk00",
  icon = "__PyBlock__/graphics/icons/sponge-culture-mk00.png",
  flags = {},
  subgroup = "py-alienlife-buildings-mk00",
  order = "e",
  place_result = "sponge-culture-mk00",
  stack_size = 10
}

require "make_copy" ("sponge-culture"):set_fields{
  energy_usage = "400kW",
  energy_source = {
    type = "void",
    usage_priority = "secondary-input",
    emissions_per_minute = {pollution = -10},
  },
  allowed_module_categories = {"sponge"}
}