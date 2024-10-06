-- fawogae for iron
-- reduce cost of buildings
RECIPE("spore-collector-mk01"):remove_ingredient("gasifier"):remove_ingredient("electronic-circuit"):remove_ingredient("steel-plate"):remove_ingredient("intermetallics"):set_fields{enabled = true}:remove_unlock("mycology-mk01")

RECIPE("fawogae-plantation-mk01"):remove_ingredient("electronic-circuit"):remove_ingredient("tinned-cable"):remove_ingredient("intermetallics"):set_fields{enabled = true}:remove_unlock("fawogae-mk01"):remove_ingredient("wood"):add_ingredient({type= "item", name = "wood", amount = 10}):remove_ingredient("iron-plate"):add_ingredient({type= "item", name = "iron-plate", amount = 5}):remove_ingredient("pipe"):add_ingredient({type= "item", name = "pipe", amount = 2}):add_ingredient({type= "item", name = "copper-plate", amount = 4})

RECIPE("fawogae-spore"):set_fields{enabled = true}:remove_unlock("fawogae-mk01"):set_fields{energy_required = 1}

RECIPE("fawogae-1"):set_fields{enabled = true}:remove_unlock("fawogae-mk01")

-- early fawogae recipe
RECIPE {
    type = "recipe",
    name = "fawogae-start",
    category = "handcrafting",
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "fawogae-spore", amount = 5},
        {type = "item", name = "planter-box", amount = 1}
    },
    results = {
        {type = "item", name = "fawogae", amount = 1}
    }
}

--remove unused materials from fawogae mk01
RECIPE("fawogae-sample"):remove_unlock("fawogae-mk01")--:add_unlock("navens")

RECIPE("fawogae-codex"):remove_unlock("fawogae-mk01"):add_unlock("yaedols")

RECIPE("earth-shroom-sample"):remove_unlock("fawogae-mk01"):add_unlock("yaedols")

RECIPE("fawogae-to-iron"):set_fields{enabled = true}:remove_unlock("molecular-decohesion")

-- reduce power cost
data.raw["assembling-machine"]["fawogae-plantation-mk01"].energy_usage = "30kW"

data.raw["assembling-machine"]["spore-collector-mk01"].energy_usage = "12kW"

-- fawogae to raw coal
RECIPE("coal-fawogae"):set_fields{enabled = true}:remove_unlock("fawogae-mk01"):set_fields{category = "distilator"}:remove_ingredient("fawogae"):add_ingredient({name = "fawogae", amount = 3}):set_fields{results = {{type = "item", name = "raw-coal", amount = 5}}}

-- seaweed
RECIPE("seaweed-crop-mk01"):remove_ingredient("tin-plate"):remove_ingredient("limestone")

-- botanical nursery
RECIPE("botanical-nursery"):remove_ingredient("fluid-drill-mk01")

-- moss farm
RECIPE("moss-farm-mk01"):remove_ingredient("aluminium-plate")

TECHNOLOGY("moss-mk01"):remove_prereq("botany-mk01")

--cadaveric for copper
RECIPE("cadaveric-to-copper"):remove_unlock("molecular-decohesion-mk03"):add_unlock("cadaveric-arum")

RECIPE("cadaveric-arum-sample"):remove_ingredient("alien-sample-02"):remove_ingredient("cdna"):remove_ingredient("earth-tropical-tree-sample"):remove_ingredient("earth-flower-sample"):remove_ingredient("bio-sample")

RECIPE("cadaveric-arum-codex"):remove_ingredient("electronic-circuit")

TECHNOLOGY("cadaveric-arum"):remove_prereq("botany-mk02"):remove_pack("py-science-pack-1"):remove_pack("logistic-science-pack"):remove_pack("py-science-pack-2")

RECIPE("stone-wool"):remove_unlock("zipir"):add_unlock("cadaveric-arum")

RECIPE("cadaveric-arum-mk01"):remove_ingredient("hydrocyclone-mk01"):remove_ingredient("electronic-circuit"):remove_ingredient("plastic-bar"):remove_ingredient("intermetallics"):remove_ingredient("steel-plate"):add_ingredient({name = "steel-plate", amount = 5}):add_ingredient({name = "pipe", amount = 4}):add_ingredient({name = "soil", amount = 20}):remove_ingredient("botanical-nursery")

--move foodless auogs to auog zero
RECIPE("auog-paddock-mk01"):remove_unlock("auog"):add_unlock("auog-mk00"):remove_ingredient("intermetallics")

RECIPE("auog"):remove_unlock("auog"):add_unlock("auog-mk00"):remove_ingredient("cdna")

RECIPE("earth-bear-sample"):remove_unlock("auog"):add_unlock("auog-mk00")

RECIPE("auog-codex"):remove_unlock("auog"):add_unlock("auog-mk00")

RECIPE("auog-pup-breeding-1"):remove_unlock("auog"):add_unlock("auog-mk00")

RECIPE("auog-maturing-1"):remove_unlock("auog"):add_unlock("auog-mk00")

RECIPE("auog-pooping-1"):remove_unlock("auog"):add_unlock("auog-mk00")

--move fawogae with manure up
TECHNOLOGY("fawogae-mk01"):remove_pack("py-science-pack-1"):set_fields{prerequisites = {}}

RECIPE("fawogae with manure"):remove_unlock("fawogae-mk02"):add_unlock("fawogae-mk01")

RECIPE("fungal-substrate"):remove_unlock("mycology-mk02"):add_unlock("fawogae-mk01")

--moss to kerogen
RECIPE {
    type = "recipe",
    name = "mossogen",
    category = "hpf",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "moss", amount = 3}
    },
    results = {
        {type = "item", name = "kerogen", amount = 1}
    }
}:add_unlock("moss-mk01")

--Tin from fish
TECHNOLOGY("molecular-decohesion"):set_fields{prerequisites = {}}

TECHNOLOGY("fish-mk01"):remove_pack("py-science-pack-1"):set_fields{prerequisites = {}}

TECHNOLOGY("tin-mk01"):remove_pack("py-science-pack-1")

TECHNOLOGY("microbiology-mk01"):remove_pack("py-science-pack-1"):set_fields{prerequisites = {}}

RECIPE("fish-farm-mk01"):set_fields{ingredients = {}}:add_ingredient({type = "item", name = "steel-plate", amount = 25}):add_ingredient({type = "item", name = "glass", amount = 20}):add_ingredient("seaweed-crop-mk01")

RECIPE("fish-to-tin"):remove_unlock("molecular-decohesion-mk02"):add_unlock("mining-with-fluid"):set_fields{ignore_in_pypp = false}

RECIPE("fish-food-01"):remove_unlock("fish-mk01"):add_unlock("fish-mk02")

RECIPE("saline-water"):remove_unlock("vacuum-tube-electronics"):add_unlock("fish-mk01")

RECIPE("breed-fish-1"):remove_ingredient("biomass"):remove_ingredient("oxygen"):set_fields{results = {{type = "item", name = "fish", amount = 15}, {type = "fluid", name = "waste-water", amount = 100}}}

local breed_fish = table.deepcopy(data.raw["recipe"]["breed-fish-1"])
breed_fish.name = "breed-fish-simple"
data.raw.recipe["breed-fish-simple"] = breed_fish
table.insert(data.raw.module["fish"].limitation, "breed-fish-simple")
table.insert(data.raw.module["fish-mk02"].limitation, "breed-fish-simple")
table.insert(data.raw.module["fish-mk03"].limitation, "breed-fish-simple")
table.insert(data.raw.module["fish-mk04"].limitation, "breed-fish-simple")
table.insert(data.raw.module["effectivity-module"].limitation_blacklist, "breed-fish-simple")
table.insert(data.raw.module["effectivity-module-2"].limitation_blacklist, "breed-fish-simple")
table.insert(data.raw.module["effectivity-module-3"].limitation_blacklist, "breed-fish-simple")
table.insert(data.raw.module["speed-module"].limitation_blacklist, "breed-fish-simple")
table.insert(data.raw.module["speed-module-2"].limitation_blacklist, "breed-fish-simple")
table.insert(data.raw.module["speed-module-3"].limitation_blacklist, "breed-fish-simple")
RECIPE("breed-fish-simple"):remove_ingredient("small-lamp"):add_unlock("fish-mk01"):set_fields{energy_required = 270, results = {{type = "item", name = "fish", amount = 12}, {type = "fluid", name = "waste-water", amount = 100}}}

RECIPE("plankton-farm"):remove_ingredient("storage-tank"):remove_ingredient("electronic-circuit")

RECIPE("zogna-bacteria"):remove_unlock("microbiology-mk01"):add_unlock("biotech-mk01")

--Lead

RECIPE("soot-to-lead"):remove_unlock("oil-sands"):add_unlock("solder-mk01")

--Zinc

TECHNOLOGY("kicalk"):remove_pack("py-science-pack-1"):remove_pack("logistic-science-pack")

RECIPE("kicalk-sample"):remove_ingredient("alien-sample01"):remove_ingredient("cdna")

RECIPE("kicalk-codex"):remove_ingredient("electronic-circuit")

RECIPE("kicalk-plantation-mk01"):remove_ingredient("intermetallics")

RECIPE("kicalk-zn"):remove_unlock("phytomining-mk02"):add_unlock("phytomining")

RECIPE("zn-biomass-extraction"):remove_ingredient("steam"):add_ingredient({type = 'fluid', name = 'steam', amount = 100, minimum_temperature = 250}):remove_unlock("phytomining-mk02"):add_unlock("phytomining")

--PY SCI 1 TWEAKS
RECIPE("biofactory-mk01"):remove_unlock("plastics"):add_unlock("biotech-mk01")

RECIPE("flavonoids"):remove_unlock("yaedols"):add_unlock("biotech-mk01")

--Titanium from yaedols
TECHNOLOGY("yaedols"):remove_pack("logistic-science-pack"):remove_pack("py-science-pack-1"):remove_prereq("mycology-mk02")

TECHNOLOGY("phytomining"):remove_pack("py-science-pack-1"):remove_pack("logistic-science-pack"):remove_pack("py-science-pack-2"):set_fields{prerequisites = {}}

TECHNOLOGY("compost"):remove_pack("py-science-pack-1"):set_fields{prerequisites = {}}

RECIPE("compost-plant-mk01"):remove_ingredient("duralumin")

RECIPE("yaedols-culture-mk01"):remove_ingredient("intermetallics"):remove_ingredient("titanium-plate")

RECIPE("fungal-substrate"):remove_unlock("fawogae-mk01"):add_unlock("yaedols")

RECIPE("yaedols-codex"):remove_ingredient("red-wire")

RECIPE("smelter-mk01"):remove_ingredient("titanium-plate")

RECIPE("yaedols-sample"):remove_ingredient("cdna"):remove_ingredient("alien-sample01"):remove_ingredient("bio-sample"):remove_ingredient("moss-gen")

RECIPE("yaedols-1"):remove_ingredient("fertilizer")

RECIPE("ti-biomass-extraction"):remove_ingredient("steam"):add_ingredient({type = 'fluid', name = 'steam', amount = 100, minimum_temperature = 250}):remove_unlock("phytomining-mk02"):add_unlock("yaedols")

RECIPE("yaedols-ti"):remove_unlock("phytomining-mk02"):add_unlock("yaedols")

RECIPE("titanium-plate-1"):remove_unlock("alloys-mk01"):add_unlock("yaedols")

-- remove titanium and intermetallics from compost
RECIPE("compost-plant-mk01"):remove_ingredient("intermetallics"):remove_ingredient("titanium-plate")

RECIPE("flue-gas-1"):set_fields{category = 'gasifier'}

RECIPE("flue-gas-3"):remove_unlock("compost")

--moving later biomasses to later tech
RECIPE("grod-sn"):remove_unlock("phytomining"):add_unlock("phytomining-mk02")
RECIPE("navens-fe"):remove_unlock("phytomining"):add_unlock("phytomining-mk02")
RECIPE("rennea-cu"):remove_unlock("phytomining"):add_unlock("phytomining-mk02")
RECIPE("tuuphra-nacl"):remove_unlock("phytomining"):add_unlock("phytomining-mk02")
RECIPE("yotoi-fe"):remove_unlock("phytomining"):add_unlock("phytomining-mk02")
RECIPE("sn-biomass-extraction"):remove_unlock("phytomining"):add_unlock("phytomining-mk02")
RECIPE("cu-biomass-extraction"):remove_unlock("phytomining"):add_unlock("phytomining-mk02")
RECIPE("nacl-biomass-extraction"):remove_unlock("phytomining"):add_unlock("phytomining-mk02")
RECIPE("fe-biomass-extraction"):remove_unlock("phytomining"):add_unlock("phytomining-mk02")
RECIPE("cadaveric-pb"):remove_unlock("phytomining"):add_unlock("phytomining-mk02")
RECIPE("s-biomass-extraction"):remove_unlock("phytomining"):add_unlock("phytomining-mk02")

--Vrauks
-- RECIPE("vrauks"):remove_ingredient("native-flora")

--moly ore
TECHNOLOGY("molecular-decohesion-mk02"):remove_pack("py-science-pack-2")

RECIPE("yaedols-to-copper"):remove_unlock("molecular-decohesion-mk02"):add_unlock("molecular-decohesion-mk03")

RECIPE("navens-to-tin"):remove_unlock("molecular-decohesion-mk02"):add_unlock("molecular-decohesion-mk03")

RECIPE("bhoddos-to-ti"):remove_unlock("molecular-decohesion-mk02"):add_unlock("molecular-decohesion-mk03")

RECIPE("grod-to-zinc"):remove_unlock("molecular-decohesion-mk02"):add_unlock("molecular-decohesion-mk03")

RECIPE("yotoi-leaves-to-chromium"):remove_unlock("molecular-decohesion-mk02"):add_unlock("molecular-decohesion-mk03")

RECIPE("yotoi-seed-to-chromium"):remove_unlock("molecular-decohesion-mk02"):add_unlock("molecular-decohesion-mk03")

--NIOBIUM
TECHNOLOGY("phytomining-mk02"):remove_pack("chemical-science-pack")
RECIPE("nb-biomass-extraction"):remove_unlock("phytomining-mk02"):add_unlock("guar")
RECIPE("guar-nb"):remove_unlock("phytomining-mk02"):add_unlock("guar")

--RARE EARTH ORE
TECHNOLOGY("phadai"):remove_pack("py-science-pack-2"):remove_pack("chemical-science-pack"):remove_pack("py-science-pack-3"):set_fields{prerequisites = {}}

RECIPE("phadai-enclosure-mk01"):remove_ingredient("nbti-alloy"):replace_ingredient("super-steel", "steel-plate"):replace_ingredient("advanced-circuit", "electronic-circuit")

RECIPE("phadai"):replace_ingredient("alien-sample-03", "alien-sample01"):remove_ingredient("cytostatics"):remove_ingredient("fetal-serum"):remove_ingredient("artificial-blood")

RECIPE("phadai-codex"):replace_ingredient("advanced-circuit", "electronic-circuit")

RECIPE("earth-tiger-sample"):replace_ingredient("py-science-pack-2", "py-science-pack-1")

TECHNOLOGY("ethanol"):remove_pack("py-science-pack-2")

TECHNOLOGY("sugar"):remove_pack("py-science-pack-2")

RECIPE("phadai-food-01"):remove_ingredient("rennea-seeds"):remove_ingredient("casein")

RECIPE("phadai-pup-1"):remove_ingredient("bedding")

RECIPE("phadai-pup-2"):remove_ingredient("bedding")

RECIPE("carapace-to-re"):remove_unlock("molecular-decohesion-mk03"):add_unlock("rare-earth-tech")