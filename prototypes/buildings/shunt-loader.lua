AAILoaders.make_tier{
  name = "shunt",
  transport_belt 	= "transport-belt",
  speed = 0.010416666666666666667,
  color	= {0.5, 0.5, 0.5},
  fluid = "steam",
  fluid_per_minute = 0.05,
  technology = { name = "automation-science-pack" },
  recipe = {
    ingredients	= {
      {type = "item", name = "transport-belt", amount = 1},
      {type = "item", name = "iron-plate", amount = 4},
      {type = "item", name = "pipe", amount = 1}
    },
    energy_required	= 2
  },
  unlubricated_recipe = {
    ingredients	= {
      {type = "item", name = "transport-belt", amount = 1},
      {type = "item", name = "iron-plate", amount = 6}
    },
    energy_required	= 2
  },
  order = "d[loader]-a00[shunt-loader]",
  upgrade	= "aai-loader",
  localise = false
}