RECIPE("bio-reactor"):replace_ingredient('advanced-circuit','electronic-circuit')

--TODO:remove engine from auto screener. add more miners. enable from start.
--TODO:create sand to quartz recipe. make expensive
for i,ing in pairs(data.raw.recipe["automated-screener"].ingredients) do

if ing[1] == "electric-mining-drill" then

table.remove(data.raw.recipe["automated-screener"].ingredients,i)

end

if ing[1] == "engine-unit" then

table.remove(data.raw.recipe["automated-screener"].ingredients,i)

end

end

table.insert(data.raw.recipe["automated-screener"].ingredients,{"electric-mining-drill",3})
data.raw.recipe["automated-screener"].enabled = true
