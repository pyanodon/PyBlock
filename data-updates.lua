RECIPE("bio-reactor"):replace_ingredient('advanced-circuit','electronic-circuit')

--TODO:change cheap miner to use steam as input and remove drill head fuel source
--TODO:make early copper plate for begining buildings.
--TODO:add recipe to turn 5 wrought iron into 1 regular iron plate
--TODO:make some basic starting structures that use wrought iron and basic copper plates to make tar and get ores and make basic steam engine/ boiler from wrought iron
for i,ing in pairs(data.raw.recipe["automated-screener"].ingredients) do

if ing.name == "electric-mining-drill" then

table.remove(data.raw.recipe["automated-screener"].ingredients,i)

end

log(serpent.block(ing))

if ing.name == "engine-unit" then

table.remove(data.raw.recipe["automated-screener"].ingredients,i)

end

end

table.insert(data.raw.recipe["automated-screener"].ingredients,{"electric-mining-drill",3})
data.raw.recipe["automated-screener"].enabled = true
