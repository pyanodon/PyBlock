--[[

NEEDS DONE
auto screener adjusts : i think this was done at home but idk. need checked
make slower cheaper mines for early game resources: iron mine done. idk if want to do rest. possibly adjust spawn to add few other starter ores

delayed till pyro update is finished!!!
start process for merging resources for bobs, angels + madclown, omni, yuki, 5dim?

DONE/NEED TO TEST
add tin to game start. need for sci 1
sci-2
quartz. need for sci 1

more testing maybe?
needs aluminium ore: is available
spawn rocks: is good


]]--

data.raw.recipe["log1"].enabled = true
data.raw.recipe["tailings-copper-iron"].enabled = true
data.raw.recipe["botanical-nursery"].enabled = true
data.raw.recipe["quenching-tower"].enabled = true
data.raw.recipe["log-wood"].enabled = true
data.raw.recipe["landfill"].enabled = true
data.raw.recipe["py-sinkhole"].enabled = true
table.insert(data.raw.technology["coal-processing-1"].effects, {type = "unlock-recipe", recipe = "tailings-borax-niobium"})
data.raw.technology["excavation-1"].unit.ingredients = {{"science-pack-1", 1},{"science-pack-2",1}}
data.raw.technology["excavation-1"].prerequisites = nil
data.raw.technology["excavation-2"].unit.ingredients = {{"science-pack-1", 1},{"science-pack-2",1}}
data.raw.technology["excavation-2"].prerequisites = {"excavation-1"}
table.insert(data.raw.technology["diamond-mining"].effects, {type = "unlock-recipe", recipe = "coaldust-to-diamond"})
table.insert(data.raw.technology["basic-electronics"].effects, {type="unlock-recipe", recipe = "bio-reactor"})
table.insert(data.raw.technology["oil-processing"].effects,{type="unlock-recipe",recipe="dirty-reaction"})
table.insert(data.raw.technology["oil-processing"].effects,{type="unlock-recipe",recipe="fts-reactor"})
table.insert(data.raw.technology["iron-mk01"].effects,{type="unlock-recipe",recipe="iron-plate"})

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
        {"science-pack-1", 1}
      },
      time = 30
    },
	order = "c-c-a"
	}

})

--table.insert(data.raw.technology["advanced-material-processing"].prerequisites, {"early-concrete"})