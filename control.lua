local startchunk = false

local surface

local X = -1
local Y = -1

local Tiles = {}

script.on_init(function(event)

local t

for x = 0,10 do

	table.insert(Tiles,{name="grass-1", position={X,Y}})
	
	X = X + 1
	
		if X == 2 then
		
			X = -1
			
			Y = Y + 1
			
			if Y == 2 then
			
				Y = -1
			
			end
			
		end
	
end

game.surfaces["nauvis"].set_tiles(Tiles)

end)

script.on_event(defines.events.on_player_created, function(event)
	
  local player = game.players[event.player_index]

  player.insert({name="quenching-tower", count=1})
  player.insert({name="botanical-nursery", count=1})
  player.insert({name="distilator", count=1})
  player.insert({name="offshore-pump", count=1})
  player.insert({name="iron-plate", count=92})
  player.insert({name="copper-plate", count=50})
  player.insert({name="copper-plate", count=50})
  player.insert({name="landfill", count=1000})
  player.insert({name="washer", count=1})
  player.insert({name="raw-wood", count=100})
  player.insert({name="wpu", count=1})
  player.insert({name="stone-furnace", count=2})
  player.insert({name="py-sinkhole", count=2})
  player.insert({name="py-gas-vent", count=2})
  
end)

script.on_event(defines.events.on_player_respawned, function(event)

  local player = game.players[event.player_index]

  player.insert({name="quenching-tower", count=1})
  player.insert({name="botanical-nursery", count=1})
  player.insert({name="distilator", count=1})
  player.insert({name="offshore-pump", count=1})
  player.insert({name="iron-plate", count=92})
  player.insert({name="copper-plate", count=50})
  player.insert({name="landfill", count=1000})
  player.insert({name="washer", count=1})
  player.insert({name="raw-wood", count=100})
  player.insert({name="wpu", count=1})
  player.insert({name="stone-furnace", count=1})
  player.insert({name="py-sinkhole", count=1})
  
end)