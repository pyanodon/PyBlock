
require('prototypes/updates/pyhightech-updates')
require('prototypes/updates/pyalienlife-updates')
require('prototypes/updates/pyrawores-updates')

RECIPE("bio-reactor"):replace_ingredient('advanced-circuit','electronic-circuit')

--TODO:make early copper plate for begining buildings. //idk if im make cheaper copper as copper is low use and proably be ok with the basic 10:1 to start after scrap supply is used up

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