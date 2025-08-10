require "recipes.recipes-zerostart"

-- fix place_result
-- data.raw.module.seaweed.place_result = "seaweed"
-- create new items
local dry_seaweed = table.deepcopy(data.raw.module.seaweed)
dry_seaweed.name = "dry-seaweed"
dry_seaweed.localised_name = nil
-- TODO update icon and possibly description, as well as module properties
if type(data.data_crawler) == "string" and string.sub(data.data_crawler, 1, 5) == "yafc " then
  dry_seaweed.type = "item"
  data.raw.item["dry-seaweed"] = dry_seaweed
else
  data.raw.module["dry-seaweed"] = dry_seaweed
end

-- reduce seaweed and driftwood density
data.raw.fish.seaweed.autoplace.probability_expression = 0.025 -- approx 30% of previous
data.raw.fish.driftwood.autoplace.probability_expression = 0.025

-- reduce seaweed entity mining results to 1
-- data.raw.fish.seaweed.minable = { mining_time = 0.4, result = "seaweed" }

-- allow inserters to fish
for _, inserter in pairs(data.raw.inserter) do
  inserter.use_easter_egg = true
end

-- wood burns into charcoal
ITEM("wood"):set_fields{burnt_result = "charcoal"}
ITEM{
  type = "item",
  name = "charcoal",
  icon = "__PyBlock__/graphics/icons/charcoal.png",
  subgroup = 'py-items',
  order = 'a3',
  stack_size = 100
}

-- create trigger techs for new recipes


-- change stone furnace to take bricks, and more of them
RECIPE("stone-furnace"):replace_ingredient("stone", "stone-brick", 8)

-- update sand-brick recipe
RECIPE("sand-brick"):set_fields{
  energy_required = 10,
  category = "hpf",
  ingredients = {
    { type = "item", name = "sand", amount = 4 },
    { type = "item", name = "charcoal", amount = 8 },
    { type = "item", name = "rich-clay", amount = 4 },
  },
  results = {{type = "item", name = "stone-brick", amount = 8}},
  crafting_category = "hpf"
}

-- update seaweed to spoil if spoilage is enabled
if feature_flags.spoiling then
  ITEM("seaweed"):spoil("dry-seaweed", 60*60*60) -- spoil after an hour
end