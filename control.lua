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

local crashedshipparts = 
		{
		"big-ship-wreck-1",
		"big-ship-wreck-2",
		"big-ship-wreck-3",
		"medium-ship-wreck",
		"small-ship-wreck"
		}
			
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
  
  local shippieces = math.random(3,10)
  
  for a=1,shippieces do
  
  local pickedpiece = crashedshipparts[math.random(1,5)]
  
  local x = math.random(-25,25)
  local y = math.random(-25,25)
  
  local cs = game.surfaces["nauvis"].create_entity{name=pickedpiece,position={x,y},force=game.players[1].force}
  
  cs.insert("pb-wrought-iron-plate")
  cs.insert({name = "copper-plate", count = 50})
  
  end
  
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

local Rocks = {
				"uranium-rock",
				"zinc-rock",
				"aluminium-rock",
				"chromium-rock",
				"coal-rock",
				"copper-rock",
				"iron-rock",
				"lead-rock",
				"nexelit-rock",
				"nickel-rock",
				"phosphate-rock-02",
				"quartz-rock",
				"salt-rock",
				"tin-rock",
				"titanium-rock"
				}

script.on_event(defines.events.on_chunk_generated, function(event)

local SelectedRock = math.random(1,15)

--log(serpent.block(event))

local tx = event.area.left_top.x
local ty = event.area.left_top.y
local bx = event.area.right_bottom.x
local by = event.area.right_bottom.y

local Randx = math.random(tx,bx)
local Randy = math.random(ty,by)

local tiles = {}

local x = Randx - 5
local y = Randy - 5

local a=0
local b=0

local RandChance = math.random(0,40)

if RandChance == 5 then

for i = 0,121 do

	table.insert(tiles,{name="grass-1", position={x,y}})
	
	x = x+1
	
	a=a+1
		
		if a==11 then
		
		x=Randx-5
		
		y=y+1
		
		b=b+1
		
		a=0
		
			if b==11 then
			
			y=Randy-5
			
			b=0
			
			end
		
		end
		
end

game.surfaces["nauvis"].set_tiles(tiles)

game.surfaces["nauvis"].create_entity{name=Rocks[SelectedRock],position={Randx,Randy},amount=math.random(1000000,15000000)}

end

end)