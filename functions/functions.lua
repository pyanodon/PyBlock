local overrides={}

function overrides.add_ingredient(recipe, ingredient)
	--check that recipe exists before doing anything else
	if data.raw.recipe[recipe] ~= nil then
		--check if ingredient is item or fluid and that it exists
		if data.raw.item[ingredient] ~= nil or data.raw.fluid[ingredient] ~= nil then
		
		end
	end

end

function overrides.add_result(recipe, result)


end
function overrides.ingredient_replace(recipe, old, new)
if type(recipe) == "string" then
local R = data.raw.recipe[recipe]
recipe = R
end
local ningredients
local eingredients
		if recipe.ingredients ~= nil then
			local ingredients = recipe.ingredients
			for i, ing in pairs(ingredients) do
			--log("get past for loop into ingredients")
				if ing.name ~= nil then
					if ing.name == old then
					--log("pasted check for if ingredients = old item")
					--log(recipe.name)
					--log(serpent.block(ing))
					local T = table.deepcopy(ing.type)
					local A = table.deepcopy(ing.amount)
					data.raw.recipe[recipe.name].ingredients[i] = {type = T, name = new, amount = A}
					--log(recipe.name)
					--log(serpent.block(recipe.ingredients))
					--log("hit count")
					end
				else
					--for j, v in pairs(ing) do
					--TODO:fix duplicated ingredients on some items
						if ing[1] == old then
						--log("pasted check for if ingredients = old item")
						--log(recipe.name)
						--log(serpent.block(ing))
						--local T = table.deepcopy(ing.type)
						local A = table.deepcopy(ing[2])
						--log(new)
						--log(A)
						data.raw.recipe[recipe.name].ingredients[i] = {new, A}
						--log(recipe.name)
						--log(serpent.block(data.raw.recipe[recipe.name].ingredients))
						--log("hit count")
						end
					--end
				end
			end
			--TODO:need to check for ingredients that dont have name declared
		elseif recipe.normal or recipe.expensive then
		--log(serpent.block(recipe))
			if recipe.normal ~= nil then
			--log("is check good")
				ningredients = recipe.normal.ingredients
			end
			if recipe.expensive ~= nil then
				eingredients = recipe.expensive.ingredients
			end
			if recipe.normal then
			--log(serpent.block(recipe.normal))
			--log(serpent.block(ningredients))
				for i, ing in pairs(ningredients) do
				--log("get past for loop into normal ingredients")
				--log("ningredients")
				--log(serpent.block(ningredients))
				--log(serpent.block(ing))
				--log("ing name")
				--log(ing.name)
				--log("old")
				--log(old)
					if ing.name ~= nil then
						if ing.name == old then
							--log("pasted check for if ingredients = old item")
							--log(recipe.name)
							--log(serpent.block(ing))
							local T = table.deepcopy(ing.type)
							local A = table.deepcopy(ing.amount)
							data.raw.recipe[recipe.name].normal.ingredients[i] = {type = T, name = new, amount = A}
							--log(recipe.name)
							--log(serpent.block(recipe.ingredients))
							--log("hit count")
							--log(serpent.block(data.raw.recipe[recipe.name]))
						end
					else
						--for j,v in pairs(ing) do
							if ing[1] == old then
							local A = table.deepcopy(ing[2])
							data.raw.recipe[recipe.name].normal.ingredients[i] = {new, A}
							end
						--end
					end
				end
			end
			if recipe.expensive then
				for i, ing in pairs(eingredients) do
				--log("get past for loop into ingredients")
					if ing.name ~= nil then
						if ing.name == old then
							--log("pasted check for if ingredients = old item")
							--log(recipe.name)
							--log(serpent.block(ing))
							local T = table.deepcopy(ing.type)
							local A = table.deepcopy(ing.amount)
							data.raw.recipe[recipe.name].expensive.ingredients[i] = {type = T, name = new, amount = A}
							--log(recipe.name)
							--log(serpent.block(recipe.ingredients))
							--log("hit count")
						end
					else
						--for j,v in pairs(ing) do
						--log("check this still works")
						--log(serpent.block(ing))
							if ing[1] == old then
							local A = table.deepcopy(ing[2])
							data.raw.recipe[recipe.name].expensive.ingredients[i] = {new, A}
							end
						--log(serpent.block(recipe))
						--end
					end
				end
			end
		end
end

function overrides.results_replacer(recipe, old, new)
if type(recipe) == "string" then
local R = data.raw.recipe[recipe]
recipe = R
end
	if recipe ~= nil then
	--log(recipe.name)
	--log(serpent.block(recipe))
		if recipe.result then
			if recipe.result == old then
			data.raw.recipe[recipe.name].result = new
			end
		end
		if recipe.results then
			for r, result in pairs(recipe.results) do
				if result.name == old then
					data.raw.recipe[recipe.name].results[r].name = new
				end
			end
		end
		if recipe.main_product ~= nil then
		--log("should replace main_product")
			if recipe.main_product == old then
				--log("getting here for iron plate 1?")
				data.raw.recipe[recipe.name].main_product = new
			end
		end
		if recipe.normal or recipe.expensive then
			if recipe.normal then
				if recipe.normal.result then
					if recipe.normal.result == old then
						data.raw.recipe[recipe.name].normal.result = new
					end
				end
				if recipe.normal.results then
					for r, result in pairs(recipe.normal.results) do
						if result.name == old then
							data.raw.recipe[recipe.name].normal.results[r].name = new
						end
					end
				end
				if recipe.normal.main_product then
					if recipe.normal.main_product == old then
						data.raw.recipe[recipe.name].normal.main_product = new
					end
				end
			end
			if recipe.expensive then
				if recipe.expensive.result then
					if recipe.expensive.result == old then
						data.raw.recipe[recipe.name].expensive.result = new
					end
				end
				if recipe.expensive.results then
					for r, result in pairs(recipe.expensive.results) do
						if result.name == old then
							data.raw.recipe[recipe.name].expensive.results[r].name = new
						end
					end
				end
				if recipe.expensive.main_product then
					if recipe.expensive.main_product == old then
						data.raw.recipe[recipe.name].expensive.main_product = new
					end
				end
			end
		end
	end
end

function overrides.global_item_replacer(old, new, blackrecipe)
local recipes = table.deepcopy(data.raw.recipe)
if type(blackrecipe) ~= "table" and blackrecipe ~= nil then
	blackrecipe = {blackrecipe}
end
local brecipeset = {}
	if blackrecipe ~= nil then
		for _, brecipe in pairs(blackrecipe) do
			brecipeset[brecipe] = true
		end
	end
	--log(serpent.block(brecipeset))
	for recipe in pairs(recipes) do
		--for b, brecipe in pairs(blackrecipe) do
			if not brecipeset[recipe] then
				--log(serpent.block(recipe))
				--log(serpent.block(recipe.name))
				--log(serpent.block(brecipeset))
				overrides.ingredient_replace(recipe,old,new)
				overrides.results_replacer(recipe,old,new)
			end
		--end
	end
end

local hab = {}

--blacklist for hot air recipes script to avoid
function overrides.HAB(blist)
	if type(blist) ~= "table" and blist ~= nil then
		blist = {blist}
	end
	if blist ~= nil then
		for _, bl in pairs(blist) do
			if data.raw.recipe[bl] ~= nil then
				hab[bl] = true
			end
		end
	end
end

--add 50 hot-air ingredient, output +2
function overrides.hotairrecipes()
--gather recipes for the advanced-foundry
local recipes = table.deepcopy(data.raw.recipe)
local afrecipes = {}
local afrecipesnames = {}
local afrcount = 0
local altrec = 0
	for _, recipe in pairs(recipes) do
		if recipe.category == "advanced-foundry" then
			table.insert(afrecipes,recipe)
			table.insert(afrecipesnames,recipe.name)
		end
		if recipe.category == "smelting" then
			table.insert(afrecipes,recipe)
			table.insert(afrecipesnames,recipe.name)
		end
	end
--cycle thru afrecipes to make changes
	for _,recipe in pairs(afrecipes) do
		if not hab[recipe.name] then
		afrcount=afrcount+1
		--add ingredient
		if recipe.normal == nil and recipe.expensive == nil then
			if recipe.ingredients[1] ~= nil then
				if recipe.ingredients[1].name == nil then
					local ing = recipe.ingredients
					recipe.ingredients = {}
					table.insert(recipe.ingredients, {type = "item", name = ing[1][1], amount = ing[1][2]})
					if data.raw.item["solid-hot-air"] ~= nil then
						table.insert(recipe.ingredients,{type="item",name="solid-hot-air",amount=50})
					else
						table.insert(recipe.ingredients,{type = "fluid", name = "hot-air", amount = 50})
					end
				elseif recipe.ingredients[1].name then
					if data.raw.item["solid-hot-air"] ~= nil then
						table.insert(recipe.ingredients,{type="item",name="solid-hot-air",amount=50})
					else
						table.insert(recipe.ingredients,{type = "fluid", name = "hot-air", amount = 50})
					end
				end
			elseif recipe.ingredients[2] ~= nil then
				if recipe.ingredients[2].name == nil then
					local ing = recipe.ingredients
					recipe.ingredients = {}
					table.insert(recipe.ingredients, {type = "item", name = ing[2][1], amount = ing[2][2]})
					if data.raw.item["solid-hot-air"] ~= nil then
						table.insert(recipe.ingredients,{type="item",name="solid-hot-air",amount=50})
					else
						table.insert(recipe.ingredients,{type = "fluid", name = "hot-air", amount = 50})
					end
				elseif recipe.ingredients[2].name then
					if data.raw.item["solid-hot-air"] ~= nil then
						table.insert(recipe.ingredients,{type="item",name="solid-hot-air",amount=50})
					else
						table.insert(recipe.ingredients,{type = "fluid", name = "hot-air", amount = 50})
					end
				end
			end
			if type(recipe.result) == "string" then
				local res = recipe.result
				recipe.result=nil
				recipe.results={{type="item",name=res,amount=3}}
			elseif recipe.results then
				if recipe.results[1].name == nil then
					local res = recipe.results
					recipe.results = {}
					table.insert(recipe.results,{type = "item", name = res[1][1], amount = (res[1][2] + 2)})
				elseif recipe.results[1].name then
					--log(serpent.block(recipe.results))
					if recipe.results[1].amount ~= nil then
						local resnum = recipe.results[1].amount + 2
						recipe.results[1].amount = resnum
					elseif recipe.results[1].amount_max ~= nil then
						local resnum = recipe.results[1].amount_max + 2
						recipe.results[1].amount_max = resnum
					end
				end
			end
		end
		if recipe.normal or recipe.expensive then
			if recipe.normal then
			--log(serpent.block(recipe.normal))
				if recipe.normal.ingredients[1] ~= nil then
					if recipe.normal.ingredients[1].name == nil then
						local ing = recipe.normal.ingredients
						recipe.normal.ingredients = {}
						table.insert(recipe.normal.ingredients, {type = "item", name = ing[1][1], amount = ing[1][2]})
						if data.raw.item["solid-hot-air"] ~= nil then
							table.insert(recipe.normal.ingredients,{type="item",name="solid-hot-air",amount=50})
						else
							table.insert(recipe.normal.ingredients,{type = "fluid", name = "hot-air", amount = 50})
						end
					else
						if data.raw.item["solid-hot-air"] ~= nil then
							table.insert(recipe.normal.ingredients,{type="item",name="solid-hot-air",amount=50})
						else
							table.insert(recipe.normal.ingredients,{type = "fluid", name = "hot-air", amount = 50})
						end
					end
				end
				if type(recipe.normal.result) == "string" then
					local res = recipe.normal.result
					recipe.normal.result = nil
					local rtab = {type = "item", name = res, amount = 3}
					recipe.normal.results={}
					table.insert(recipe.normal.results,rtab)
				end
				if recipe.normal.results ~= nil then
					local resamount = recipe.normal.results[1].amount
					recipe.normal.results[1].amount = resamount + 2
				end
			end
			if recipe.expensive then
				if recipe.expensive.ingredients[1] ~= nil then
					if recipe.expensive.ingredients[1].name == nil then
						local ing = recipe.expensive.ingredients
						recipe.expensive.ingredients = {}
						table.insert(recipe.expensive.ingredients, {type = "item", name = ing[1][1], amount = ing[1][2]})
						if data.raw.item["solid-hot-air"] ~= nil then
							table.insert(recipe.expensive.ingredients,{type="item",name="solid-hot-air",amount=50})
						else
							table.insert(recipe.expensive.ingredients,{type = "fluid", name = "hot-air", amount = 50})
						end
					else
						if data.raw.item["solid-hot-air"] ~= nil then
							table.insert(recipe.expensive.ingredients,{type="item",name="solid-hot-air",amount=50})
						else
							table.insert(recipe.expensive.ingredients,{type = "fluid", name = "hot-air", amount = 50})
						end
					end
				end
				if type(recipe.expensive.result) == "string" then
					local res = recipe.expensive.result
					recipe.expensive.result = nil
					local rtab = {type = "item", name = res, amount = 3}
					recipe.expensive.results={}
					table.insert(recipe.expensive.results,rtab)
					--log(serpent.block(rtab))
					--log(serpent.block(recipe.expensive.results))
				end
				if recipe.expensive.results ~= nil then
					local resamount = recipe.expensive.results[1].amount
					recipe.expensive.results[1].amount = resamount + 2
				end
			end
		end
		--find tech unlock of og recipe
		local unlock
		for _,t in pairs(data.raw.technology) do
		--log(serpent.block(t))
			if t.effects ~= nil then
				for _,u in pairs(t.effects) do
					if u.recipe == recipe.name then
						unlock = t.name
						--log(unlock)
					end
				end
			end
		end
		--log(serpent.block(recipe))
		local hname = "hotair-" .. recipe.name
		if recipe.results then
			RECIPE {
			type = "recipe",
			name = hname,
			category = "hot-air-advanced-foundry",
			enabled = false,
			energy_required = recipe.energy_required,
			ingredients = recipe.ingredients,
			results = recipe.results,
			icon = recipe.icon,
			icons = recipe.icons,
			icon_size = 32,
			main_product = recipe.main_product or nil
			}--:add_unlock(unlock)
			altrec=altrec+1
			if recipe.enabled == false then
				if unlock ~= nil then
					table.insert(data.raw.technology[unlock].effects,{type="unlock-recipe",recipe=hname})
				end
			elseif recipe.enabled == true then
				data.raw.recipe[hname].enabled = true
			elseif recipe.enabled == nil then
				--log(recipe.name)
				--log(serpent.block(recipe))
				data.raw.recipe[hname].enabled = true
				--log(serpent.block(data.raw.recipe[hname]))
			end
		end
		if recipe.normal or recipe.expensive then
			RECIPE {
				type = "recipe",
				name = hname,
				category = "hot-air-advanced-foundry",
				normal = {
					category = "hot-air-advanced-foundry",
					enabled = false,
					energy_required = recipe.expensive.energy_required,
					ingredients = recipe.normal.ingredients,
					results = recipe.normal.results,
					},
				expensive = {
					category = "hot-air-advanced-foundry",
					enabled = false,
					energy_required = recipe.expensive.energy_required,
					ingredients = recipe.expensive.ingredients,
					results = recipe.expensive.results,
					},
				icon = recipe.icon,
				icons = recipe.icons,
				icon_size = 32,
				main_product = recipe.main_product or nil
				}--:add_unlock(unlock)
			altrec=altrec+1
			if recipe.normal.enabled == false or recipe.expensive.enabled == false then
				if unlock ~= nil then
					table.insert(data.raw.technology[unlock].effects,{type="unlock-recipe",recipe=hname})
				end
			elseif recipe.normal.enabled == true or recipe.expensive.enabled == true then
				if recipe.normal.enabled == true then
					data.raw.recipe[hname].normal.enabled = true
				end
				if recipe.expensive.enabled == true then
					data.raw.recipe[hname].expensive.enabled = true
				end
			end
		end
		--log(serpent.block(data.raw.recipe[hname]))
	end
end
--log(serpent.block(afrecipesnames))
--log(afrcount)
--log(altrec)
--[[
for _, r in pairs(data.raw.recipe) do
	if r.name == "iron-plate" then
	log(serpent.block(r))
	end
	if r.category == "hot-air-advanced-foundry" then
	log(serpent.block(r))
	end
end
]]--
end

return overrides