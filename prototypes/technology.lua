
--recipes unlocked at start:
data.raw.recipe["py-sinkhole"].enabled = true

--building unlocked at start:
--data.raw.recipe["botanical-nursery"].enabled = true
--data.raw.recipe["quenching-tower"].enabled = true

--buildings removed from start:
RECIPE("distilator"):set_fields{enabled=false}
table.insert(data.raw.technology["coal-processing-1"].effects,{type="unlock-recipe",recipe="distilator"})
data.raw.recipe["wpu-mk01"].enabled=false
table.insert(data.raw.technology["coal-processing-1"].effects,{type="unlock-recipe",recipe="wpu-mk01"})
data.raw.recipe["washer"].enabled=false
table.insert(data.raw.technology["separation"].effects,{type="unlock-recipe",recipe="washer"})
data.raw.recipe["soil-extractormk01"].enabled=false
table.insert(data.raw.technology["separation"].effects,{type="unlock-recipe",recipe="soil-extractormk01"})
--data.raw.recipe["tar-processing-unit"].enabled=false
table.insert(data.raw.technology["coal-processing-1"].effects,{type="unlock-recipe",recipe="tar-processing-unit"})

--tech changes:
table.insert(data.raw.technology["coal-processing-1"].effects, {type = "unlock-recipe", recipe = "tailings-borax-niobium"})
data.raw.technology["excavation-1"].unit.ingredients = {{"automation-science-pack", 1},{"logistic-science-pack",1}}
data.raw.technology["excavation-1"].prerequisites = nil
data.raw.technology["excavation-2"].unit.ingredients = {{"automation-science-pack", 1},{"logistic-science-pack",1}}
data.raw.technology["excavation-2"].prerequisites = {"excavation-1"}
table.insert(data.raw.technology["diamond-mining"].effects, {type = "unlock-recipe", recipe = "coaldust-to-diamond"})

--oil products adjustments
--table.insert(data.raw.technology["basic-electronics"].effects, {type="unlock-recipe", recipe = "bio-reactor"})
table.insert(data.raw.technology["oil-processing"].effects,{type="unlock-recipe",recipe="dirty-reaction"})

table.insert(data.raw.technology["oil-processing"].effects,{type="unlock-recipe",recipe="fts-reactor"})
table.insert(data.raw.technology["oil-processing"].effects,{type="unlock-recipe",recipe="tar-oil"})
table.insert(data.raw.technology["oil-processing"].effects,{type="unlock-recipe",recipe="heavy-oil_from_coal-gas"})
table.insert(data.raw.technology["oil-processing"].effects,{type="unlock-recipe",recipe="light-oil_from_syngas"})
table.insert(data.raw.technology["oil-processing"].effects,{type="unlock-recipe",recipe="petgas-from-refsyngas"})


--metals adjustments
table.insert(data.raw.technology["iron-mk01"].effects,{type="unlock-recipe", recipe ="iron-plate"})
--table.insert(data.raw.technology["chromium-mk02"].effects, {type = "unlock-recipe", recipe = "molten-chromium-01"})
--data.raw.technology["nexelit-mk01"].prerequisites = {"machines-mk01"}
table.insert(data.raw.technology["separation"].effects,{type="unlock-recipe", recipe = "titanium-from-rich-dust"})

--adding new recipes for ree
table.insert(data.raw.technology["rare-earth-tech"].effects,{type="unlock-recipe", recipe = "propene-to-butanol"})
table.insert(data.raw.technology["rare-earth-tech"].effects,{type="unlock-recipe", recipe = "phosphorus-tricloride"})
table.insert(data.raw.technology["rare-earth-tech"].effects,{type="unlock-recipe", recipe = "phosphoryl-chloride"})
table.insert(data.raw.technology["rare-earth-tech"].effects,{type="unlock-recipe", recipe = "tributyl-phosphate"})
table.insert(data.raw.technology["rare-earth-tech"].effects,{type="unlock-recipe", recipe = "ree-from-ash"})

data:extend({
	{
	type = "technology",
	name = "early-concrete",
	icon = "__base__/graphics/technology/concrete.png",
	icon_size = 128,
	effects =
		{
			{
			type = "unlock-recipe",
			recipe = "concrete"
			}
		},
	unit =
    {
      count = 40,
      ingredients =
      {
        {"automation-science-pack", 1}
      },
      time = 30
    },
	order = "c-c-a"
	},
})

--move crude oil, heavy oil, light oil and petrol from fuel production to oil processing
--move molten chromium from sand to chromium processing 02

--table.insert(data.raw.technology["advanced-material-processing"].prerequisites, {"early-concrete"})
