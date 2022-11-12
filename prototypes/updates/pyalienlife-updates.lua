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
