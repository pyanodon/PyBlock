local ores_from_nothing = {
  ["iron-ore"] = true,
  ["copper-ore"] = true,
  ["coal"] = true,
  ["stone"] = true,
  ["uranium-ore"] = true,
  ["crude-oil"] = true,
  ["borax"] = true,
  ["niobium"] = true,
  ["molybdenum-ore"] = true,
  ["volcanic-pipe"] = true,
  ["regolites"] = true,
  ["ore-quartz"] = true,
  ["raw-coal"] = true,
  ["ore-aluminium"] = true,
  ["ore-chromium"] = true,
  ["ore-lead"] = true,
  ["ore-nickel"] = true,
  ["ore-tin"] = true,
  ["ore-titanium"] = true,
  ["ore-zinc"] = true,
  ["quartz-rock"] = true,
  ["chromium-rock"] = true,
  ["aluminium-rock"] = true,
  ["copper-rock"] = true,
  ["salt-rock"] = true,
  ["iron-rock"] = true,
  ["coal-rock"] = true,
  ["lead-rock"] = true,
  ["nexelit-rock"] = true,
  ["nickel-rock"] = true,
  ["tin-rock"] = true,
  ["titanium-rock"] = true,
  ["uranium-rock"] = true,
  ["zinc-rock"] = true,
  ["phosphate-rock-02"] = true,
  ["phosphate-rock"] = true,
  ["rare-earth-bolide"] = true,
  ["oil-sand"] = true,
  ["tar-patch"] = true,
  ["oil-mk01"] = true,
  ["oil-mk02"] = true,
  ["oil-mk03"] = true,
  ["oil-mk04"] = true,
  ["sulfur-patch"] = true,
  ["natural-gas-mk01"] = true,
  ["natural-gas-mk02"] = true,
  ["natural-gas-mk03"] = true,
  ["natural-gas-mk04"] = true,
  ["bitumen-seep"] = true,
  ["ralesia-flowers"] = true,
  ["rennea-flowers"] = true,
  ["tuuphra-tuber"] = true,
  ["grod-flower"] = true,
  ["yotoi-tree"] = true,
  ["yotoi-tree-fruit"] = true,
  ["ore-bioreserve"] = true,
  ["ore-nexelit"] = true,
  ["geothermal-crack"] = true,
  ["ree"] = true,
  ["antimonium"] = true,
  ["mova"] = true,
  ["kicalk-tree"] = true,
  ["arum"] = true,
}


if settings.startup["pypp-dev-mode"].value == true and settings.startup["pypp-create-cache"].value == true then
	for r, resource in pairs(data.raw.resource) do
		-- resource.autoplace = nil
    log(resource.name .. " has value " .. (ores_from_nothing[resource.name] and "true" or "false"))
		if ores_from_nothing[resource.name] == true then
			resource.autoplace = nil
		end
	end
end

require("prototypes/updates/pycoalprocessing-updates")
require("prototypes/updates/pypetroleumhandling-updates")
require("prototypes/updates/pyrawores-updates")
require('prototypes/updates/pyalienlife-updates')
require("prototypes/updates/pyalternativeenergy-updates")

--mapgen--
require("prototypes/mapgen")

--UNUSED
--require('prototypes/updates/ddc-coal-updates')
--require("prototypes/updates/pyfusionenergy-updates")
--require('prototypes/updates/pyhightech-updates')

--add driftwood for closer logs
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings.driftwood = {}

data:extend {
  {
    type = "fish",
    name = "driftwood",
    icon = "__PyBlock__/graphics/icons/driftwood.png",
    icon_size = 64,
    flags = {"placeable-neutral", "not-on-map"},
    minable = {mining_time = 0.4, result = "log", count = 4},
    max_health = 20,
    subgroup = "creatures",
    order = "b-a",
    collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{-0.5, -0.3}, {0.5, 0.3}},
    collision_mask = {layers = {ground_tile = true}, colliding_with_tiles_only = true},
    pictures = {
      {
        filename = '__PyBlock__/graphics/icons/driftwood.png',
        priority = 'extra-high',
        blend_mode = 'additive',
        width = 64,
        height = 64,
        scale = 0.5
      }
    },
    autoplace = { probability_expression = 0.004 },
    protected_from_tile_building = false
  }
}


-- create "floating" seaweed that moves
local seaweed = table.deepcopy(data.raw.tree.seaweed)
data.raw.tree.seaweed = nil
seaweed.type = "fish"
data.raw.fish.seaweed = seaweed

--adjust landfill cost for landfill painter
if mods['LandfillPainting'] then
	local recipe_list = {
		'landfill-dry-dirt',
		'landfill-dirt-4',
		'landfill-grass-1',
		'landfill-red-desert-1',
		'landfill-sand-3',
		}
		for _, recipe in pairs(recipe_list) do
			RECIPE(recipe):remove_ingredient('stone'):add_ingredient({type = "item", name = 'stone', amount = 1}):add_ingredient({type = "item", name ='sand', amount = 2})
		end
end

data.raw.technology["excavation-1"].unit.ingredients = {{"automation-science-pack", 1},{"py-science-pack-1",1}}
data.raw.technology["excavation-1"].prerequisites = nil

table.insert(RECIPE("soot-separation").results, {type = "item", name = "ore-nickel", amount = 1, probability = 0.1})

RECIPE("soot-separation"):set_fields{unlock_results = true, ignore_in_pypp = false}

RECIPE("mining-antimony"):remove_unlock("excavation-2"):add_unlock("excavation-1")--:set_fields{results = {{type = "item", name = "antimonium-ore", amount = 20}}}

RECIPE("ground-borer"):remove_ingredient("intermetallics")

-- reduce fish oil to lube cost to increase drilling yield relative to fish input
RECIPE("mining-borax"):replace_ingredient("drilling-fluid-1", "lubricant")
RECIPE("fish-oil-to-lube"):replace_ingredient("fish-oil", "fish-oil", 50)

-- create new soot to ore recipes that generalize byproducts
local ores = {
  ["iron-ore"] = {
    recipe_extension = "iron",
    amount = 8,
    technology = "oil-sands",
    byproduct_probability = 0.2
  },
  ["copper-ore"] = {
    recipe_extension = "copper",
    amount = 8,
    technology = "ash-separation",
    byproduct_probability = 0.2
  },
  ["ore-aluminium"] = {
    recipe_extension = "aluminium",
    amount = 6,
    technology = "mining-with-fluid",
    byproduct_probability = 0.1
  },
  ["ore-zinc"] = {
    recipe_extension = "zinc",
    amount = 6,
    technology = "oil-sands",
    byproduct_probability = 0.1
  },
  ["ore-lead"] = {
    recipe_extension = "lead",
    amount = 8,
    technology = "solder-mk01",
    byproduct_probability = 0.1
  },
  ["ore-nickel"] = {
    recipe_extension = "nickel",
    amount = 0,
    technology = "",
    byproduct_probability = 0.1
  }
}
for o, ore in pairs(ores) do
  if ore.amount ~= 0 then
    RECIPE("soot-to-" .. ore.recipe_extension):set_fields {
      energy_required = 15,
      ingredients = {
        { type = "item", name = "soot", amount = 10 }
      },
      results = {
        { type = "item", name = o, amount = ore.amount },
        { type = "item", name = "ash", amount = 1, probability = 0.3 }
      },
      result = nil,
      main_product = o,
      ignore_in_pypp = false
    }
    for s, secondary_ore in pairs(ores) do
      if s ~= o then
        table.insert(data.raw.recipe["soot-to-" .. ore.recipe_extension].results, { type = "item", name = s, amount = 1, probability = secondary_ore.byproduct_probability })
      end
    end
  end
end

RECIPE("soot-to-copper"):add_unlock("ash-separation")
RECIPE("soot-to-aluminium"):add_unlock("mining-with-fluid")

-- get rid of the steam power tech
TECHNOLOGY("steam-power"):set_fields{hidden = true, unit = data.raw["technology"]["mining-productivity-4"].unit}
data.raw.technology["steam-power"].research_trigger = nil
for e, effect in pairs(data.raw["technology"]["steam-power"].effects) do
  if effect.type == "unlock-recipe" then
    RECIPE(effect.recipe):remove_unlock("steam-power"):set_fields{enabled = true}
  else
    data.raw["technology"]["ash-separation"].effects[#data.raw["technology"]["ash-separation"].effects+1] = effect
  end
end

-- remove required recipes from automation science pack
RECIPE("empty-planter-box"):remove_unlock("automation-science-pack"):set_fields{enabled = true}
RECIPE("soil"):remove_unlock("automation-science-pack"):set_fields{enabled = true}

-- move starter ash separation recipes to ash-separation and set trigger tech
TECHNOLOGY("ash-separation"):set_fields{research_trigger = { type = "craft-item", item = "ash", count = 200 }, prerequisites = {"atomizer-mk00"}}
RECIPE("copper-plate"):add_unlock("ash-separation"):set_fields{enabled = false}
RECIPE("inductor1-2"):add_unlock("ash-separation"):set_fields{enabled = false}
data.raw["technology"]["ash-separation"].unit = nil

-- set automation science pack to require 10 copper plates
TECHNOLOGY("automation-science-pack"):set_fields{research_trigger = { type = "craft-item", item = "copper-plate", count = 10 }}:set_fields{prerequisites = {"ash-separation"}}

-- burner/steam mk00 recipe adjustments
RECIPE("wpu"):add_ingredient{"inductor1", 12}:add_ingredient("wpu-mk00", 1):remove_unlock("automation-science-pack"):add_unlock("wood-processing"):set_fields{enabled = false}

RECIPE("soil-extractor-mk01"):remove_ingredient("burner-mining-drill"):add_ingredient("soil-extractor-mk00", 1)

RECIPE("washer"):remove_ingredient("steam-engine"):add_ingredient("washer-mk00", 1)

RECIPE("flora-collector-mk01"):remove_ingredient("soil-extractor-mk01"):add_ingredient("soil-extractor-mk00", 1)

RECIPE("compost-plant-mk01"):add_ingredient("compost-plant-mk00", 1):remove_unlock("compost"):add_unlock("fertilizer-mk01")

RECIPE("slaughterhouse-mk01"):add_ingredient("slaughterhouse-mk00")

-- increase construction costs of geothermal plant
RECIPE("geothermal-plant-mk01"):add_ingredient{"pipe", 80}:add_ingredient{"concrete", 150}

-- slow down geowater->steam recipe, and add more ingredients
RECIPE("geo-he-00"):set_fields{
  energy_required = 10,
  ingredients = {
    { type = "fluid", name = "geothermal-water", amount = 180, minimum_temperature = 950 },
    { type = "fluid", name = "water", amount = 400 }
  },
  results = {
    { type = "fluid", name = "steam", amount = 320, temperature = 500 },
    { type = "fluid", name = "dirty-water-light", amount = 80 }
  }
}

-- move atomizer recipes to new trigger tech
RECIPE("iron-plate"):add_unlock("atomizer-mk00"):set_fields{enabled = false}

-- add burner atomizer to atomizer mk01 recipe
RECIPE("atomizer-mk01"):remove_ingredient("washer"):add_ingredient("atomizer-mk00")

-- data.raw.technology["mega-farm"].unit.ingredients = {{"automation-science-pack", 1},{"py-science-pack-1",1}}
-- TECHNOLOGY("mega-farm"):set_fields{prerequisites = {}}

-- RECIPE("mega-farm"):set_fields{ingredients = {}}:add_ingredient({"concrete", 200}):add_ingredient({"treated-wood", 50})

-- RECIPE("replicator-bioreserve"):set_fields{ingredients = {}}

-- data.raw.technology["mega-farm-bioreserve"].unit.ingredients = {{"automation-science-pack", 1},{"py-science-pack-1",1}}

RECIPE("earth-generic-sample"):remove_unlock("xenobiology"):add_unlock("biotech-mk01")

RECIPE("data-array"):remove_ingredient("titanium-plate")

if register_cache_file ~= nil then
    register_cache_file({'pycoalprocessing', 'pyfusionenergy', 'pyindustry', 'pyrawores', 'pypetroleumhandling', 'pyalienlife', 'pyhightech', 'pyalternativeenergy', 'PyBlock'}, "__PyBlock__/cached-configs/PyBlock+pyalienlife+pyalternativeenergy+pycoalprocessing+pyfusionenergy+pyhightech+pyindustry+pypetroleumhandling+pyrawores")
end