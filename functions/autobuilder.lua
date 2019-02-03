
local entitytypes = 
	{
	"assembling-machine",
	"furnace"
	}
	

script.on_event("recipe-selector", function(event)

local player = game.players[event.player_index]

game.print("starting factory buildout")

local recipe = player.selected.get_recipe()

local surface = game.surfaces["nauvis"]

game.print(recipe.name)

local pos = player.selected.position

local x = pos.x + 20

local y = pos.y

log(serpent.block(pos))

game.print(x)
game.print(y)

--local factory = data.raw["assembling-machine"]["automated-factory-mk01"]

	for i, ing in pairs(recipe.ingredients) do
		
		local fname
		local frecipe
		
		for R, recipes in pairs(data.raw.recipe) do
		
			if recipes.results ~= nil then
			
				for r, result in pairs(recipes.results) do
			
					if result.name ~= nil then
					
						if ing.name == result.name then
						
							frecipe = recipes
							
						end
					end
				end
			end
		end
		
		local fcraftcat = fname.category
		
		for et, enttype in pairs(entitytypes) do
		
			for e, ent in pairs(data.raw.enttype) do
			
				for c, crcat in pairs(ent.crafting_categories) do
				
					if crcat == fcraftcat then
					
						fname = ent.name
							
					end
				end
			end
		end
		
		if fname ~= nil then
			
			local factory = surface.create_entity{name = fname, position = {x,y},force=game.players[1].force}
			
			x = factory.position.x+20
			
			factory.set_recipe(ing.name)
			
			--for i2, ing2 in pairs(factory.get_recipe().ingredients) do
			
		end	
		
	end

end)