RECIPE("bio-reactor"):replace_ingredient('advanced-circuit','electronic-circuit')

--TODO:make early copper plate for begining buildings. //idk if im make cheaper copper as copper is low use and proably be ok with the basic 10:1 to start after scrap supply is used up

for i,ing in pairs(data.raw.recipe["automated-screener"].ingredients) do

if ing.name == "electric-mining-drill" then

table.remove(data.raw.recipe["automated-screener"].ingredients,i)

end

log(serpent.block(ing))

if ing.name == "engine-unit" then

table.remove(data.raw.recipe["automated-screener"].ingredients,i)

end

if ing.name == "steel-plate" then

	data.raw.recipe["automated-screener"].ingredients[i].amount = 5
	
end

if ing.name == "iron-plate" then

	data.raw.recipe["automated-screener"].ingredients[i].amount = 20
	
end

end

table.insert(data.raw.recipe["automated-screener"].ingredients,{"electric-mining-drill",1})
data.raw.recipe["automated-screener"].enabled = true
