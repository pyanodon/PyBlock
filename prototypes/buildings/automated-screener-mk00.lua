RECIPE {
  type = "recipe",
  name = "automated-screener-mk00",
  energy_required = 10,
  enabled = false,
  ingredients = {
    {type = "item", name = "iron-plate",      amount = 40},
    {type = "item", name = "iron-gear-wheel", amount = 10},
    {type = "item", name = "stone-brick",     amount = 16}
  },
  results = {
    {type = "item", name = "automated-screener-mk00", amount = 1}
  }
}:add_unlock("glass")

ITEM {
  type = "item",
  name = "automated-screener-mk00",
  icon = "__PyBlock__/graphics/icons/automated-screener-mk00.png",
  icon_size = 64,
  flags = {},
  subgroup = "py-fusion-buildings-mk00",
  order = "d",
  place_result = "automated-screener-mk00",
  stack_size = 10
}

require "make_copy" ("automated-screener"):set_fields{
  energy_source = {
    type = "burner",
    fuel_categories = {"chemical", "biomass"},
    effectivity = 1,
    fuel_inventory_size = 1,
    burnt_inventory_size = 1,
    emissions_per_minute = {pollution = 0.06}
  },
  energy_usage = "80kW"
}