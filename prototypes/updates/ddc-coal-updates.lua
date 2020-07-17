--update the ddc recipes to give flat iron oxide output amounts. no probability crap
--[[
data.raw.recipe['coal-gas-from-wood'].results = {
    {type = "fluid", name = "coal-gas", amount = 10},
    {type = "fluid", name = "tar", amount = 30},
    {type = "item", name = "iron-oxide", amount = 3},
    {type = "item", name = "raw-coal", amount = 5}
}
]]--
data.raw.recipe['distilled-raw-coal'].results =
{
    {type = "fluid", name = "coal-gas", amount = 60},
    {type = "fluid", name = "tar", amount = 30},
    {type = "item", name = "iron-oxide", amount = 3},
    {type = "item", name = "coal", amount = 4}
}

data.raw.recipe['coal-gas'].results = {
    {type = "fluid", name = "coal-gas", amount = 40},
    {type = "fluid", name = "tar", amount = 50},
    {type = "item", name = "iron-oxide", amount = 2},
    {type = "item", name = "coke", amount = 6}
}

data.raw.recipe['coal-gas-from-coke'].results = {
    {type = "fluid", name = "coal-gas", amount = 20},
    {type = "fluid", name = "tar", amount = 20},
    {type = "item", name = "ash", amount = 1},
    {type = "item", name = "iron-oxide", amount = 1}
}
