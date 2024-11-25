script.on_init(function(event)
  if remote.interfaces['freeplay'] then
    local created_items = remote.call('freeplay', 'get_created_items')
    created_items['landfill'] = 1000
    created_items['stone'] = 250
    created_items['log'] = 200
    created_items["iron-plate"] = 1000
    created_items["copper-plate"] = 500
    created_items["transport-belt"] = 100
    created_items["burner-inserter"] = 50
    created_items['py-tank-1000'] = 1
    created_items['py-tank-3000'] = 1
    created_items['py-tank-5000'] = 1
    created_items['py-tank-8000'] = 1
    created_items["stone-furnace"] = 1
    created_items["py-sinkhole"] = 2
    created_items["py-gas-vent"] = 2
    remote.call('freeplay', 'set_created_items', created_items)
  end
end)

script.on_event(defines.events.on_player_created, function(event)
  local player = game.players[event.player_index]
  if not player.valid then return end
  local nauvis = game.surfaces["nauvis"]
  if not nauvis then return end
  local elevation = game.surfaces["nauvis"].map_gen_settings.property_expression_names.elevation
	if elevation ~= "pyblock_classic" and elevation ~= "pyblock_island" and elevation ~= "pyblock_archipeligo" then
		player.print {"messages.pyblock-warning-no-preset"}
  end
end)