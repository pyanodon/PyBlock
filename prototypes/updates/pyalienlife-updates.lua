RECIPE("spore-collector-mk01"):remove_ingredient("gasifier"):remove_ingredient("electronic-circuit"):remove_ingredient("steel-plate"):remove_ingredient("intermetallics"):set_fields{enabled = true}:remove_unlock("mycology-mk01")

RECIPE("fawogae-plantation-mk01"):remove_ingredient("electronic-circuit"):remove_ingredient("tinned-cable"):remove_ingredient("intermetallics"):set_fields{enabled = true}:remove_unlock("fawogae-mk01")

RECIPE("fawogae-spore"):set_fields{enabled = true}:remove_unlock("fawogae-mk01"):set_fields{energy_required = 1}

RECIPE("fawogae-1"):set_fields{enabled = true}:remove_unlock("fawogae-mk01")

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
RECIPE("fawogae-sample"):remove_unlock("fawogae-mk01")

RECIPE("fawogae-codex"):remove_unlock("fawogae-mk01")

RECIPE("earth-shroom-sample"):remove_unlock("fawogae-mk01")

RECIPE("fawogae-to-iron"):set_fields{enabled = true}:remove_unlock("molecular-decohesion")

data.raw["assembling-machine"]["fawogae-plantation-mk01"].energy_source = {type = "void"}

data.raw["assembling-machine"]["spore-collector-mk01"].energy_source = {type = "void"}

RECIPE("seaweed-crop-mk01"):remove_ingredient("tin-plate"):remove_ingredient("limestone")

RECIPE("automation-science-pack"):remove_ingredient("native-flora"):add_ingredient({name = "seaweed", amount = 1})


--PY SCI 1 TWEAKS

--Titanium from yaedols
TECHNOLOGY("yaedols"):remove_pack("logistic-science-pack"):remove_pack("py-science-pack-1"):remove_prereq("mycology-mk02")

TECHNOLOGY("phytomining"):remove_pack("py-science-pack-1"):remove_pack("logistic-science-pack"):remove_pack("py-science-pack-2"):set_fields{prerequisites = {}}

TECHNOLOGY("compost"):remove_pack("py-science-pack-1")

TECHNOLOGY("composting"):remove_pack("py-science-pack-1")

RECIPE("yaedols-culture-mk01"):remove_ingredient("intermetallics"):remove_ingredient("titanium-plate")

RECIPE("fungal-substrate"):remove_unlock("mycology-mk02"):add_unlock("yaedols")

RECIPE("yaedols-codex"):remove_ingredient("red-wire")

RECIPE("smelter-mk01"):remove_ingredient("titanium-plate")

RECIPE("yaedols-sample"):set_fields{ingredients = {}}

RECIPE("yaedols-1"):remove_ingredient("fertilizer")

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

RECIPE("ti-biomass-extraction"):remove_ingredient("steam"):add_ingredient({type = 'fluid', name = 'steam', amount = 100, minimum_temperature = 250}):remove_unlock("phytomining-mk02"):add_unlock("phytomining")

RECIPE("yaedols-ti"):remove_unlock("phytomining-mk02"):add_unlock("phytomining")

--Tin from fish
TECHNOLOGY("molecular-decohesion"):set_fields{prerequisites = {}}:remove_pack("py-science-pack-1")

TECHNOLOGY("fish-mk01"):remove_pack("py-science-pack-1"):set_fields{prerequisites = {}}

TECHNOLOGY("tin-mk01"):remove_pack("py-science-pack-1")

TECHNOLOGY("microbiology-mk01"):remove_pack("py-science-pack-1"):set_fields{prerequisites = {}}

RECIPE("fish-farm-mk01"):remove_unlock("water-animals-mk01"):add_unlock("fish-mk01"):remove_ingredient("intermetallics")

RECIPE("fish-to-tin"):remove_unlock("molecular-decohesion-mk02"):add_unlock("molecular-decohesion")

--Lead

RECIPE("soot-to-lead"):remove_unlock("oil-sands"):add_unlock("tar-processing")

--Circuit Tweaks

--Zinc

TECHNOLOGY("kicalk"):remove_pack("py-science-pack-1"):remove_pack("logistic-science-pack")

RECIPE("kicalk-sample"):remove_ingredient("alien-sample01"):remove_ingredient("cdna")

RECIPE("kicalk-codex"):remove_ingredient("electronic-circuit")

RECIPE("kicalk-plantation-mk01"):remove_ingredient("intermetallics")

RECIPE("kicalk-zn"):remove_unlock("phytomining-mk02"):add_unlock("phytomining")

RECIPE("zn-biomass-extraction"):remove_ingredient("steam"):add_ingredient({type = 'fluid', name = 'steam', amount = 100, minimum_temperature = 250}):remove_unlock("phytomining-mk02"):add_unlock("phytomining")