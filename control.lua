--require("functions/autobuilder")

local startchunk = false

local surface

local X = -1
local Y = -1

local Tiles = {}

script.on_init(function(event)

--do first delete everything in the chunk + set it to water only

local oldtiles = {}

local waters =
	{
	"water",
	"deepwater",
	--"deepwater-green",
	--"water-green",
	--"water-shallow",
	--"water-mud",
	}

local tx = -32
local ty = -32

local bx = 32
local by = 32

local fx = tx
local fy = ty

for i = 0,4096 do

	table.insert(oldtiles,{name=waters[math.random(1,2)],position={fx,fy}})

	fx = fx + 1
	
	if fx == tx + 64 then
	
		fx = tx
		fy = fy + 1
		
	end

end

game.surfaces["nauvis"].set_tiles(oldtiles)

local crap = game.surfaces["nauvis"].find_entities({{tx,ty},{bx,by}})

for _,c in pairs(crap) do

log(serpent.block(c))
if c ~= game.player then

c.destroy()

end

end

--setup spawn area

global.firstrock = true

local t

for x = 0,10 do

	table.insert(Tiles,{name="landfill", position={X,Y}})
	
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
  
  --game.show_message_dialog{text = {"intro"}}

  player.insert({name="landfill", count=1000})
  player.insert({name="stone", count=200})
  player.insert({name="wood", count=100})
  --player.insert({name="iron-axe", count=1})
  --[[
  player.insert({name="quenching-tower", count=1})
  player.insert({name="botanical-nursery", count=1})
  player.insert({name="distilator", count=1})
  player.insert({name="offshore-pump", count=1})
  player.insert({name="iron-plate", count=92})
  player.insert({name="copper-plate", count=50})
  player.insert({name="copper-plate", count=50})
  player.insert({name="washer", count=1})
  player.insert({name="wpu", count=1})
  player.insert({name="stone-furnace", count=2})
  player.insert({name="py-sinkhole", count=2})
  player.insert({name="py-gas-vent", count=2})
  ]]--
  
  player.remove_item("iron-plate")
  player.remove_item("stone-furnace")
  player.remove_item("burner-mining-drill")
  
  local shippieces = math.random(5,10)
  
  local cs
  
  local firstcon=true
	
  for a=1,shippieces do
  
  local pickedpiece = crashedshipparts[math.random(1,5)]
  
  local x = math.random(-25,25)
  local y = math.random(-25,25)
  
  local cs = game.surfaces["nauvis"].create_entity{name=pickedpiece,position={x,y},force=game.players[1].force}
  
  --cs.insert({name = "scrap-iron", count = 400})
  --cs.insert({name = "scrap-copper", count = 50})
  
	  if cs.type == "container" and firstcon == true then
	  
		cs.insert({name = "stone-furnace", count = 1})
		cs.insert({name="py-sinkhole", count=2})
		cs.insert({name="py-gas-vent", count=2})
	  
	  firstcon = false
	  
	  end
  
  end
  
end)
--remove this convert them to void energy sources
script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity}, function(event)

local E = event.created_entity
	
	if E.name == "py-sinkhole" or E.name == "py-gas-vent" then
	
		E.insert({name = "coal", count = 1})
	
	end

end)
--[[
script.on_event(defines.events.on_player_respawned, function(event)

  local player = game.players[event.player_index]

  --player.insert({name="quenching-tower", count=1})
  --player.insert({name="botanical-nursery", count=1})
  --player.insert({name="distilator", count=1})
  --player.insert({name="offshore-pump", count=1})
  --player.insert({name="iron-plate", count=92})
  --player.insert({name="copper-plate", count=50})
  --player.insert({name="landfill", count=1000})
  --player.insert({name="washer", count=1})
  --player.insert({name="wood", count=100})
  --player.insert({name="wpu", count=1})
  --player.insert({name="stone-furnace", count=1})
  --player.insert({name="py-sinkhole", count=1})
  
end)
]]--

local Rocks = {
				"iron-rock",
				"uranium-rock",
				"zinc-rock",
				"aluminium-rock",
				"chromium-rock",
				"coal-rock",
				"copper-rock",
				"lead-rock",
				"nexelit-rock",
				"nickel-rock",
				"phosphate-rock-02",
				"quartz-rock",
				"salt-rock",
				"tin-rock",
				"titanium-rock",
				"volcanic-pipe",
				"regolites",
				"rare-earth-bolide",
				"phosphate-rock"
				}
			
--local firstrock = true
				
script.on_event(defines.events.on_chunk_generated, function(event)

--getting chunk bounds

local tx = event.area.left_top.x
local ty = event.area.left_top.y
local bx = event.area.right_bottom.x
local by = event.area.right_bottom.y

log(serpent.block(event.area))
--do first delete everything in the chunk + set it to water only
if tx == -32 and ty == -32 then
	log("was start chunk")
	log(serpent.block(event.area))
elseif tx == -32 and ty == 0 then
	log("was start chunk")
	log(serpent.block(event.area))
elseif tx == 0 and ty == -32 then
	log("was start chunk")
	log(serpent.block(event.area))
elseif tx == 0 and ty == 0 then
	log("was start chunk")
	log(serpent.block(event.area))
else

		local oldtiles = {}

		local waters =
			{
			"water",
			"deepwater",
			--"deepwater-green",
			--"water-green",
			--"water-shallow",
			--"water-mud",
			}

		local fx = tx
		local fy = ty

		for i = 0,1024 do

			table.insert(oldtiles,{name=waters[math.random(1,2)],position={fx,fy}})

			fx = fx + 1
			
			if fx == tx + 32 then
			
				fx = tx
				fy = fy + 1
				
			end

		end

		game.surfaces["nauvis"].set_tiles(oldtiles)

		local crap = game.surfaces["nauvis"].find_entities({{tx,ty},{bx,by}})

		for _,c in pairs(crap) do

		c.destroy()

		end
	--end
end
--setting stuff in chunk
local SelectedRock = math.random(1,15)

local Randx = math.random(tx,bx)
local Randy = math.random(ty,by)

local tiles = {}

local x = Randx - 5
local y = Randy - 5

local a=0
local b=0

local RandChance

if global.firstrock == true then

	SelectedRock = 1
	
	RandChance = math.random(0,40)
	
else

	RandChance = math.random(0,480)
	
end

if RandChance == 5 then

for i = 0,121 do

	table.insert(tiles,{name="landfill", position={x,y}})
	
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

if global.firstrock == true then

	global.firstrock = false
	
end

end

end)