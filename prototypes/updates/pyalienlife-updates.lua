-- fawogae for iron
-- adjust mk01 recipes
RECIPE("spore-collector-mk01"):replace_unlock("mycology-mk01", "fawogae-mk01").ingredients = {
  {type = "item", name = "stone-brick", amount = 50},
  {type = "item", name = "steam-engine", amount = 2},
  {type = "item", name = "iron-gear-wheel", amount = 10},
  {type = "item", name = "steel-plate", amount = 20},
  {type = "item", name = "iron-plate", amount = 40}
}
RECIPE("fawogae-plantation-mk01").ingredients = {
  {type = "item", name = "pipe", amount = 10},
  {type = "item", name = "wood", amount = 50},
  {type = "item", name = "soil", amount = 100},
  {type = "item", name = "iron-plate", amount = 20},
  {type = "item", name = "stone-brick", amount = 10}
}
for _, entity in pairs{
  "fawogae-plantation-mk01",
  "fawogae-plantation-mk02",
  "fawogae-plantation-mk03",
  "fawogae-plantation-mk04"
} do
  data.raw["assembling-machine"][entity].fluid_boxes[1].pipe_connections[1].flow_direction = "input-output"
  data.raw["assembling-machine"][entity].fluid_boxes[2].pipe_connections[1].flow_direction = "input-output"
end

RECIPE("fawogae-spore"):replace_unlock("fawogae-mk01", "fawogae-mk00").energy_required = 1
RECIPE("fawogae-1"):replace_unlock("fawogae-mk01", "fawogae-mk00")

-- early fawogae recipe
RECIPE {
  type = "recipe",
  name = "fawogae-start",
  category = "handcrafting",
  enabled = false,
  energy_required = 5,
  allow_as_intermediate = false,
  ingredients = {
    {type = "item", name = "fawogae-spore", amount = 5},
    {type = "item", name = "wood",          amount = 2},
    {type = "item", name = "soil",          amount = 5}
  },
  results = {
    {type = "item", name = "fawogae", amount = 1}
  }
}:add_unlock("fawogae-mk00")

--remove unused materials from fawogae mk01
RECIPE("fawogae-sample"):remove_unlock("fawogae-mk01")

RECIPE("fawogae-codex"):replace_unlock("fawogae-mk01", "yaedols")

RECIPE("earth-shroom-sample"):replace_unlock("fawogae-mk01", "yaedols")

RECIPE("fawogae-to-iron"):replace_unlock("molecular-decohesion", "atomizer-mk00"):set_ingredient_amount("fawogae", 20):set_result_amount("iron-ore", 18).energy_required = 15

-- fwf updates
RECIPE("wood-seeds"):replace_unlock("wood-processing", "wood-processing-0")

-- fawogae to raw coal
RECIPE("coal-fawogae"):replace_unlock("fawogae-mk01", "coal-processing-0"):set_result_amount("raw-coal", 5).category = "distilator"

-- seaweed
RECIPE("seaweed-crop-mk01"):remove_ingredient("pipe"):remove_ingredient("stone-brick"):remove_ingredient("steam-engine"):add_ingredient({type = "item", name = "seaweed-crop-mk00", amount = 1})
RECIPE("seaweed-1"):replace_unlock("seaweed-mk01", "seaweed-mk00")

-- botanical nursery
RECIPE("botanical-nursery"):remove_ingredient("fluid-drill-mk01")

-- moss farm
RECIPE("moss-farm-mk01"):remove_ingredient("aluminium-plate")
TECHNOLOGY("moss-mk01"):remove_prereq("botany-mk01")

--cadaveric for copper
RECIPE("cadaveric-to-copper"):replace_unlock("molecular-decohesion-mk03", "cadaveric-arum"):set_ingredient_amount("cadaveric-arum", 3):set_result_amount("copper-ore", 60).energy_required = 20
RECIPE("cadaveric-arum-sample"):remove_ingredient("alien-sample-02"):remove_ingredient("cdna"):remove_ingredient("earth-tropical-tree-sample"):remove_ingredient("earth-flower-sample"):remove_ingredient("bio-sample")
RECIPE("cadaveric-arum-codex"):remove_ingredient("electronic-circuit"):set_ingredient_amount("tinned-cable", 5):set_ingredient_amount("small-lamp", 2)
TECHNOLOGY("cadaveric-arum"):remove_prereq("botany-mk02"):remove_pack("py-science-pack-1"):remove_pack("logistic-science-pack"):remove_pack("py-science-pack-2")
RECIPE("cadaveric-arum-1"):set_result_amount("cadaveric-arum", 7).energy_required = 110
RECIPE("cadaveric-arum-1-soil"):set_result_amount("cadaveric-arum", 7).energy_required = 126 -- TURD
RECIPE("cadaveric-arum-1-msa"):set_result_amount("cadaveric-arum", 7).energy_required = 110  -- TURD
RECIPE("stone-wool"):replace_unlock("zipir", "cadaveric-arum")
RECIPE("stone-wool2"):replace_unlock("zipir", "cadaveric-arum")
RECIPE("cadaveric-arum-mk01"):remove_ingredient("hydrocyclone-mk01"):remove_ingredient("electronic-circuit"):remove_ingredient("plastic-bar"):remove_ingredient("intermetallics"):set_ingredient_amount("steel-plate", 5):add_ingredient {type = "item", name = "pipe", amount = 4}:add_ingredient {type = "item", name = "soil", amount = 20}:remove_ingredient("botanical-nursery")

-- add acid gas req, reduce seed useage to match
for _, addendum in pairs{
  "",
  "-msa",
  "-soil"
} do
  for i=1,4 do
    RECIPE("cadaveric-arum-" .. i .. addendum):add_ingredient{type = "fluid", name = "acidgas", amount = 50 * i, fluidbox_index = 3}:add_ingredient_amount("cadaveric-arum-seeds", -2 * i)
  end
end

-- move cadaveric 2 up to logi
RECIPE("blood-meal"):replace_unlock("nylon", "cadaveric-arum-mk02")
TECHNOLOGY("cadaveric-arum-mk02"):remove_pack("chemical-science-pack")

-- move fawogae with manure up (even though it doesnt use manure anymore)
TECHNOLOGY("fawogae-mk01"):remove_pack("py-science-pack-1").prerequisites = {}
RECIPE("fawogae-2"):replace_unlock("fawogae-mk02", "fawogae-mk01"):set_result_amount("fawogae", 18)
RECIPE("fungal-substrate"):replace_unlock("mycology-mk02", "fawogae-mk01")
RECIPE("dried-meat-01"):replace_unlock("rendering", "water-animals-mk01"):set_result_amount("dried-meat", 8)

-- move faw 2 up to logi
TECHNOLOGY("fawogae-mk02"):remove_pack("py-science-pack-2"):add_pack("logistic-science-pack")

-- double faw speeds (you're welcome skosko)
data.raw["assembling-machine"]["fawogae-plantation-mk00"].crafting_speed = 4 * data.raw["assembling-machine"]["fawogae-plantation-mk00"].crafting_speed
data.raw["assembling-machine"]["fawogae-plantation-mk01"].crafting_speed = 4 * data.raw["assembling-machine"]["fawogae-plantation-mk01"].crafting_speed
data.raw["assembling-machine"]["fawogae-plantation-mk02"].crafting_speed = 4 * data.raw["assembling-machine"]["fawogae-plantation-mk02"].crafting_speed
data.raw["assembling-machine"]["fawogae-plantation-mk03"].crafting_speed = 4 * data.raw["assembling-machine"]["fawogae-plantation-mk03"].crafting_speed
data.raw["assembling-machine"]["fawogae-plantation-mk04"].crafting_speed = 4 * data.raw["assembling-machine"]["fawogae-plantation-mk04"].crafting_speed

--moss to kerogen
RECIPE {
  type = "recipe",
  name = "mossogen",
  category = "hpf",
  enabled = false,
  energy_required = 6,
  ingredients = {
    {type = "item", name = "moss", amount = 4}
  },
  results = {
    {type = "item", name = "kerogen", amount = 5}
  }
}:add_unlock("moss-mk01")

-- some changes to flue gas/tailings/acid gas/mossogen
RECIPE("tar-quenching"):set_result_amount("water-saline", 80)
RECIPE("sulfur-void-tar"):set_result_amount("tar", 150)

--Tin from fish
TECHNOLOGY("molecular-decohesion").prerequisites = {}

TECHNOLOGY("fish-mk01"):remove_pack("py-science-pack-1").prerequisites = {}

TECHNOLOGY("microbiology-mk01"):remove_pack("py-science-pack-1").prerequisites = {}
RECIPE("plankton-farm"):remove_ingredient("intermetallics"):remove_ingredient("storage-tank"):remove_ingredient("electronic-circuit")
RECIPE("jerky-to-phytoplankton"):set_ingredient_amount("dried-meat", 1):set_result_amount("phytoplankton", 20)
RECIPE("phytoplankton"):replace_unlock("microbiology-mk01", "tin-mk01")
RECIPE("phytoplankton-3"):replace_unlock("microbiology-mk03", "microbiology-mk01"):multiply_ingredient_amount("flue-gas", 3).autotech_ignore = true
RECIPE("phytoplankton-2"):replace_unlock("microbiology-mk04", "microbiology-mk02")
RECIPE("waste-water-void"):replace_unlock("fish-mk01", "electrolysis")

RECIPE("fish-farm-mk01").ingredients = {
  {type = "item", name = "steel-plate", amount = 25},
  {type = "item", name = "glass", amount = 20},
  {type = "item", name = "seaweed-crop-mk01", amount = 1},
  {type = "item", name = "pump", amount = 1}
}
RECIPE("breed-fish-egg-1"):set_ingredient_amount("fish", 8):set_ingredient_amount("phytoplankton", 30)
RECIPE("fish-oil-to-tin"):replace_unlock("molecular-decohesion-mk02", "water-animals-mk01")
RECIPE("meat-to-tin"):replace_unlock("molecular-decohesion", "water-animals-mk01"):set_result_amount("ore-tin", 4)
RECIPE("tin-plate-1"):replace_unlock("mining-with-fluid", "water-animals-mk01")
RECIPE("tinned-cable"):replace_unlock("mining-with-fluid", "solder-mk01")
RECIPE("fish-food-01"):replace_unlock("fish-mk01", "fish-mk02")

RECIPE("full-render-fish"):set_result_amount("meat", 4)

RECIPE("breed-fish-1"):remove_ingredient("oxygen").results = {
  {type = "item", name = "fish", amount = 15},
  {type = "fluid", name = "waste-water", amount = 100}
}
RECIPE("breed-fish-1-agressive-selection"):set_result_amount("fish", 13)

local breed_fish = table.deepcopy(data.raw["recipe"]["breed-fish-1"])
breed_fish.name = "breed-fish-0"
data.raw.recipe["breed-fish-0"] = breed_fish

RECIPE("breed-fish-0"):remove_ingredient("small-lamp"):add_unlock("fish-mk01"):set_fields {
  energy_required = 200,
  results = {
    {type = "item", name = "fish", amount = 12},
    {type = "fluid", name = "waste-water", amount = 100}
  }
}.icons[2].icon = "__pyalienlifegraphics__/graphics/icons/0.png"

RECIPE("breed-fish-0"):set_ingredient_amount("water-saline", 60)
RECIPE("breed-fish-1"):set_ingredient_amount("water-saline", 80)

RECIPE("saline-water"):replace_unlock("electronics", "fish-mk01")

TECHNOLOGY("water-animals-mk01"):remove_pack("py-science-pack-1").prerequisites = {}

RECIPE("zogna-bacteria"):replace_unlock("microbiology-mk01", "biotech-mk01")

--Lead

RECIPE("soot-to-lead"):replace_unlock("oil-sands", "solder-mk01")

-- glass
RECIPE("zogna-bacteria"):remove_ingredient("small-lamp"):set_result_amount("zogna-bacteria", 15).energy_required = 6
-- RECIPE("zogna-bacteria-darkness"):add_ingredient("small-lamp", 1):set_result_amount("zogna-bacteria", 20) -- TURD variation, it produces 20 with the lamp addition
RECIPE("incubator-mk01"):remove_ingredient("duralumin"):remove_ingredient("titanium-plate"):add_ingredient{type = "item", name = "steel-plate", amount = 20}
RECIPE("sea-sponge-sprouts"):replace_unlock("water-invertebrates-mk01", "water-invertebrates-mk00")
RECIPE("sea-sponge-codex"):remove_unlock("water-invertebrates-mk01"):set_fields{hidden = true, hidden_in_factoriopedia = true}
RECIPE("earth-sea-sponge-sample"):remove_unlock("water-invertebrates-mk01"):set_fields{hidden = true, hidden_in_factoriopedia = true}
RECIPE("sea-sponge"):remove_unlock("water-invertebrates-mk01"):set_fields{hidden = true, hidden_in_factoriopedia = true}
RECIPE("sea-sponge-1"):replace_unlock("water-invertebrates-mk01", "biotech-mk01"):set_ingredient_amount("zogna-bacteria", 20)
RECIPE("sea-sponge-processing-01"):replace_unlock("water-invertebrates-mk01", "glass"):set_result_amount("ore-quartz", 100).energy_required = 20
RECIPE("sea-sponge-sprouts-processing-01"):replace_unlock("water-invertebrates-mk01", "water-invertebrates-mk00"):set_result_amount("ore-quartz", 70).energy_required = 16

-- t0 sponge
RECIPE {
  type = "recipe",
  name = "sea-sponge-0",
  category = "sponge",
  enabled = false,
  energy_required = 350,
  ingredients = {
    {type = "item", name = "sea-sponge-sprouts", amount = 1},
    {type = "fluid", name = "muddy-sludge", amount = 150}
  },
  results = {
    {type = "item", name = "sea-sponge", amount_min = 0, amount_max = 2, probability = 0.7}
  }
}:add_unlock("water-invertebrates-mk00")
--[[

--]]

--Zinc

TECHNOLOGY("kicalk"):remove_pack("py-science-pack-1"):remove_pack("logistic-science-pack")

RECIPE("kicalk-sample"):remove_ingredient("alien-sample01"):remove_ingredient("cdna")

RECIPE("kicalk-codex"):remove_ingredient("electronic-circuit")

RECIPE("kicalk-plantation-mk01"):remove_ingredient("intermetallics")

RECIPE("kicalk-zn"):replace_unlock("phytomining-mk02", "phytomining")

RECIPE("zn-biomass-extraction"):remove_ingredient("steam"):add_ingredient {type = "fluid", name = "steam", amount = 100, minimum_temperature = 250}:replace_unlock("phytomining-mk02", "phytomining")

-- move biocontainer, biosample, generic DNA sample to xenobiology
RECIPE("bio-container"):replace_unlock("biotech-mk01", "xenobiology")
RECIPE("bio-sample"):replace_unlock("biotech-mk01", "xenobiology")

RECIPE("flavonoids"):replace_unlock("yaedols", "py-science-pack-2")

--Titanium from yaedols
TECHNOLOGY("yaedols"):remove_pack("logistic-science-pack"):remove_pack("py-science-pack-1"):remove_prereq("mycology-mk02")
RECIPE("yaedols-2"):set_ingredient_amount("fungal-substrate-02", 2) -- replace special fungal substrate with improved fungal substrate
RECIPE("yaedols-mk02"):set_ingredient_amount("fungal-substrate-02", 5)

TECHNOLOGY("phytomining"):remove_pack("py-science-pack-1"):remove_pack("logistic-science-pack"):remove_pack("py-science-pack-2").prerequisites = {}

TECHNOLOGY("compost"):remove_pack("py-science-pack-1").prerequisites = { "steel-processing" }

RECIPE("yaedols-codex"):set_ingredient_amount("electronic-circuit", 25)
RECIPE("yaedols-culture-mk01"):remove_ingredient("intermetallics"):set_ingredient_amount("electronic-circuit", 25):set_ingredient_amount("titanium-plate", 20)

RECIPE("yaedols-sample"):remove_ingredient("cdna"):remove_ingredient("alien-sample01"):remove_ingredient("moss-gen")
RECIPE("yaedols-1"):remove_ingredient("fertilizer")

RECIPE("yaedols-ti"):replace_unlock("phytomining-mk02", "yaedols")
RECIPE("ti-biomass-extraction"):replace_ingredient("steam", {type = "fluid", name = "steam", amount = 100, minimum_temperature = 250}):replace_unlock("phytomining-mk02", "yaedols")

RECIPE("titanium-plate-1"):replace_unlock("alloys-mk01", "fluid-processing-machines-1")

RECIPE("flue-gas-1").category = "gasifier"
RECIPE("flue-gas-3"):remove_unlock("compost")

--moving later biomasses to later tech
RECIPE("grod-sn"):replace_unlock("phytomining", "phytomining-mk02")
RECIPE("navens-fe"):replace_unlock("phytomining", "phytomining-mk02")
RECIPE("rennea-cu"):replace_unlock("phytomining", "phytomining-mk02")
RECIPE("tuuphra-nacl"):replace_unlock("phytomining", "phytomining-mk02")
RECIPE("yotoi-fe"):replace_unlock("phytomining", "phytomining-mk02")
RECIPE("sn-biomass-extraction"):replace_unlock("phytomining", "phytomining-mk02")
RECIPE("cu-biomass-extraction"):replace_unlock("phytomining", "phytomining-mk02")
RECIPE("nacl-biomass-extraction"):replace_unlock("phytomining", "phytomining-mk02")
RECIPE("fe-biomass-extraction"):replace_unlock("phytomining", "phytomining-mk02")
RECIPE("cadaveric-pb"):replace_unlock("phytomining", "phytomining-mk02")
RECIPE("s-biomass-extraction"):replace_unlock("phytomining", "phytomining-mk02")

-- Bhoddos to uranium
TECHNOLOGY("chemical-science-pack"):add_prereq("bhoddos")
RECIPE("ur-biomass-extraction"):replace_unlock("phytomining-mk03", "phytomining-mk02"):set_result_amount("uranium-ore", 50):set_ingredient_amount("ur-biomass", 4).energy_required = 80
RECIPE("bhodos-ur"):set_fields {
  ingredients = {
    {type = "fluid", name = "pressured-steam", amount = 500, minimum_temperature = 2000},
    {type = "item",  name = "bhoddos",         amount = 5}
  },
  results = {{type = "item", name = "ur-biomass", amount = 40}},
  energy_required = 120
}:replace_unlock("phytomining-mk03", "phytomining-mk02")
RECIPE("bhodos-ur-2"):set_fields {
  ingredients = {
    {type = "fluid", name = "pressured-steam", amount = 500, minimum_temperature = 2000},
    {type = "fluid", name = "chelator",        amount = 50},
    {type = "item",  name = "bhoddos",         amount = 5}
  },
  results = {{type = "item", name = "ur-biomass", amount = 60}},
  energy_required = 100
}:replace_unlock("phytomining-mk03", "phytomining-mk02")
RECIPE("bhodos-ur-3"):set_fields {
  ingredients = {
    {type = "fluid", name = "pressured-steam", amount = 500, minimum_temperature = 2000},
    {type = "fluid", name = "chelator",        amount = 50},
    {type = "item",  name = "bhoddos",         amount = 5},
    {type = "item",  name = "hmas",            amount = 1}
  },
  energy_required = 80
}

--Vrauks
-- RECIPE("vrauks"):remove_ingredient("native-flora")

--moly ore
TECHNOLOGY("molecular-decohesion-mk02"):remove_pack("py-science-pack-2")

RECIPE("yaedols-to-copper"):replace_unlock("molecular-decohesion-mk02", "molecular-decohesion-mk03")

RECIPE("navens-to-tin"):replace_unlock("molecular-decohesion-mk02", "molecular-decohesion-mk03")

RECIPE("bhoddos-to-ti"):replace_unlock("molecular-decohesion-mk02", "molecular-decohesion-mk03")

RECIPE("grod-to-zinc"):replace_unlock("molecular-decohesion-mk02", "molecular-decohesion-mk03")

RECIPE("yotoi-leaves-to-chromium"):replace_unlock("molecular-decohesion-mk02", "molecular-decohesion-mk03")

RECIPE("yotoi-seed-to-chromium"):replace_unlock("molecular-decohesion-mk02", "molecular-decohesion-mk03")

--NIOBIUM
TECHNOLOGY("phytomining-mk02"):remove_pack("chemical-science-pack")
RECIPE("nb-biomass-extraction"):replace_unlock("phytomining-mk02", "guar")
RECIPE("guar-nb"):replace_unlock("phytomining-mk02", "guar")

-- move guar back to logi so they can be used for phadai
TECHNOLOGY("guar"):remove_pack("py-science-pack-2"):remove_prereq("py-science-pack-2")

--RARE EARTH ORE
TECHNOLOGY("phadai"):remove_pack("py-science-pack-2"):remove_pack("chemical-science-pack"):remove_pack("py-science-pack-3").prerequisites = {}

RECIPE("phadai-enclosure-mk01"):remove_ingredient("nbti-alloy"):replace_ingredient("super-steel", "steel-plate"):replace_ingredient("advanced-circuit", "electronic-circuit")

RECIPE("phadai"):replace_ingredient("alien-sample-03", "alien-sample01"):remove_ingredient("cytostatics"):remove_ingredient("fetal-serum"):remove_ingredient("artificial-blood")

RECIPE("phadai-codex"):replace_ingredient("advanced-circuit", "electronic-circuit")

RECIPE("phadai-earth-sample-turd"):remove_ingredient("artificial-blood"):replace_ingredient("alien-sample-03", "alien-sample01", 10)

RECIPE("earth-tiger-sample"):replace_ingredient("py-science-pack-2", "py-science-pack-1")

TECHNOLOGY("ethanol"):remove_pack("py-science-pack-2")

TECHNOLOGY("sugar"):remove_pack("py-science-pack-2")

RECIPE("phadai-food-01"):remove_ingredient("rennea-seeds"):remove_ingredient("casein")

RECIPE("phadai-pup-1"):remove_ingredient("bedding")

RECIPE("phadai-pup-2"):remove_ingredient("bedding")

RECIPE("carapace-to-re"):replace_unlock("molecular-decohesion-mk03", "rare-earth-tech")
