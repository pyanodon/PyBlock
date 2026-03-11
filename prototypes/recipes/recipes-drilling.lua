local function make_drilling_recipe(recipe, drilling_fluid)
  recipe.main_product = recipe.results[1].name
  recipe.results[#recipe.results+1] = { type = "fluid", name = drilling_fluid, amount = 0, fluidbox_index = 2 }
  recipe.results[#recipe.results+1] = { type = "fluid", name = "drilling-fluid-0", amount = 0, fluidbox_index = 3 }
  recipe.results[#recipe.results+1] = { type = "fluid", name = "drilling-fluid-1", amount = 0, fluidbox_index = 4 }
  recipe.results[#recipe.results+1] = { type = "fluid", name = "drilling-fluid-2", amount = 0, fluidbox_index = 5 }
  recipe.results[#recipe.results+1] = { type = "fluid", name = "drilling-fluid-3", amount = 0, fluidbox_index = 6 }
  recipe.hidden_from_player_crafting = true
  return RECIPE(recipe)
end

make_drilling_recipe(
  {
    type = "recipe",
    name = "geothermal-drilling",
    category = "geowater",
    energy_required = 1,
    ingredients = {
      { type = "item", name = "pipe", amount = 1 },
      { type = "item", name = "small-parts-01", amount = 1 },
    },
    results = {{type = "fluid", name = "geothermal-water", amount_min = 1000, amount_max = 40000, temperature = 3000, fluidbox_index = 1}}
  },
  "pressured-water"
):add_unlock("geothermal-power-mk01")