RECIPE("bio-reactor"):replace_ingredient('advanced-circuit','electronic-circuit')

--TODO:make early copper plate for begining buildings. //idk if im make cheaper copper as copper is low use and proably be ok with the basic 10:1 to start after scrap supply is used up

--log(serpent.block(data.raw.recipe["automated-screener"]))

for i,ing in pairs(data.raw.recipe["automated-screener-mk01"].ingredients) do

--log(serpent.block(data.raw.recipe["automated-screener"]))

--log(serpent.block(ing))
--log(serpent.block(data.raw.recipe["automated-screener"].ingredients[i]))


if ing.name == "electric-mining-drill" then

--table.remove(data.raw.recipe["automated-screener"].ingredients,i)
data.raw.recipe["automated-screener-mk01"].ingredients[i]=nil
end

--log(serpent.block(ing))

if ing.name == "engine-unit" then

--table.remove(data.raw.recipe["automated-screener"].ingredients,i)
data.raw.recipe["automated-screener-mk01"].ingredients[i]=nil
end

if ing[1] == "steel-plate" then

	data.raw.recipe["automated-screener-mk01"].ingredients[i][2] = 5
	
end

if ing[1] == "iron-plate" then

	data.raw.recipe["automated-screener-mk01"].ingredients[i][2] = 20
	
end

--log(serpent.block(data.raw.recipe["automated-screener"]))

end

--log(serpent.block(data.raw.recipe["automated-screener"]))

table.insert(data.raw.recipe["automated-screener-mk01"].ingredients,{"electric-mining-drill",1})
data.raw.recipe["automated-screener-mk01"].enabled = true


--change nichrome to be availble earlier

for i,ing in pairs(data.raw.recipe["nichrome"].ingredients) do

	if ing.name == "nitrogen" then

		data.raw.recipe["nichrome"].ingredients[i] = nil
		
	end
	
end

data.raw.recipe["nichrome"].category = "smelting"

if mods["angelsrefining"] then

data.raw.recipe["angelsore5-crushed-smelting"].normal.results[1] = nil
data.raw.recipe["angelsore5-crushed-smelting"].normal.results[1]= {type = "item", name = "aluminium-plate", amount = 1}

end

--fix localization for crushed rubyte lead plate