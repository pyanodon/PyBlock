if not script.active_mods['pylandblock'] then

    script.on_init(function(event)

        if remote.interfaces['freeplay'] then

            local created_items = remote.call('freeplay', 'get_created_items')
            created_items['landfill'] = 1000
            created_items['stone'] = 400
            created_items['wood'] = 500
            created_items["iron-plate"] = 500
            created_items["copper-plate"] = 500
            created_items['py-tank-1000'] = 1
            created_items['py-tank-3000'] = 1
            created_items['py-tank-5000'] = 1
            created_items['py-tank-8000'] = 1
            created_items["stone-furnace"] = 1
            created_items["py-sinkhole"] = 2
            created_items["py-gas-vent"] = 2
            remote.call('freeplay', 'set_created_items', created_items)

            --local debris_items = remote.call("freeplay", "get_debris_items")
            --debris_items["stone-furnace"] = 1
            --debris_items["py-sinkhole"] = 2
            --debris_items["py-gas-vent"] = 2
            --debris_items["scrap-iron"] = 400
            --remote.call("freeplay", "set_debris_items", debris_items)


        end

    end)

--[[
    local Rocks = {
        'iron-rock', 'copper-rock', 'uranium-rock', 'zinc-rock', 'aluminium-rock', 'chromium-rock', 'coal-rock',
        'lead-rock', 'nexelit-rock', 'nickel-rock', 'phosphate-rock-02', 'quartz-rock', 'salt-rock', 'tin-rock',
        'titanium-rock', 'volcanic-pipe', 'regolites', 'rare-earth-bolide', 'phosphate-rock', 'sulfur-patch',
        'bitumen-seep'
    }

    -- local firstrock = true

    local loot_table_fuelrod = {'fuelrod-mk01', 'fuelrod-mk02', 'fuelrod-mk03', 'fuelrod-mk04', 'fuelrod-mk05'}

    local loot_table_plates = {
        'iron-plate', 'copper-plate', 'duralumin', 'steel-plate', 'pb-wrought-iron-plate', 'chromium', 'super-steel',
        'landfill'
    }

    local loot_table_basic_mats = {
        'stone', 'wood', 'stone-brick', 'iron-ore', 'ore-aluminium', 'ore-nickel', 'ore-quartz', 'ore-zinc',
        'ore-titanium', 'ore-chromium', 'raw-coal'
    }
    ]]--
--[[
    script.on_event(defines.events.on_chunk_generated, function(event)

        -- getting chunk bounds

        local tx = event.area.left_top.x
        local ty = event.area.left_top.y
        local bx = event.area.right_bottom.x
        local by = event.area.right_bottom.y

        -- log(serpent.block(event.area))
        -- do first delete everything in the chunk + set it to water only
        if tx == -32 and ty == -32 then
            -- log("was start chunk")
            -- log(serpent.block(event.area))
        elseif tx == -32 and ty == 0 then
            -- log("was start chunk")
            -- log(serpent.block(event.area))
        elseif tx == 0 and ty == -32 then
            -- log("was start chunk")
            -- log(serpent.block(event.area))
        elseif tx == 0 and ty == 0 then
            -- log("was start chunk")
            -- log(serpent.block(event.area))
        else

            local crap = game.surfaces['nauvis'].find_entities({{tx, ty}, {bx, by}})

            for _, c in pairs(crap) do

                -- log(serpent.block(c))
                -- log(serpent.block(c.name))
                -- log(serpent.block(c.position))

                if c.valid == true and c.name ~= 'iron-rock' and c.name ~= 'seaweed' and c.name ~= 'fish' then
                    -- log('destroying')
                    c.destroy()

                end

            end

            local oldtiles = {}

            local waters = {
                'water', 'deepwater'
                -- "deepwater-green",
                -- "water-green",
                -- "water-shallow",
                -- "water-mud",
            }

            local fx = tx
            local fy = ty

            for i = 0, 1024 do

                -- check for landfill from another chunk and dont replace
                if game.surfaces['nauvis'].get_tile(fx, fy).name == 'landfill' then

                else
                    -- local ent = game.surfaces["nauvis"].find_entities({{fx,fy},{fx,fy}})
                    -- for _, e in pairs(ent) do
                    -- log(e.name)
                    -- if e.name == "iron-rock" then
                    -- else
                    table.insert(oldtiles, {name = waters[math.random(1, 2)], position = {fx, fy}})
                    -- end
                    -- end
                end
                fx = fx + 1
                if fx == tx + 32 then
                    fx = tx
                    fy = fy + 1
                end
            end
            game.surfaces['nauvis'].set_tiles(oldtiles)
            local crap = game.surfaces['nauvis'].find_entities({{tx, ty}, {bx, by}})
            for _, c in pairs(crap) do
                -- log(serpent.block(c.name))
                if c.name ~= 'fish' and c.name ~= 'seaweed' then c.destroy() end
            end
            -- end
        end
        -- setting stuff in chunk
        local SelectedRock = math.random(1, 21)

        local Randx = math.random(tx + 7, bx - 7)
        local Randy = math.random(ty + 7, by - 7)

        local tiles = {}

        local x = Randx - 7
        local y = Randy - 7

        local a = 0
        local b = 0

        local RandChance

        if global.firstrock == true then
            SelectedRock = 1
            RandChance = math.random(0, 30)
        elseif global.secondrock == true and global.firstrock == false then
            SelectedRock = 2
            RandChance = math.random(0, 30)
        else
            RandChance = math.random(0, 240)
        end
        if RandChance == 5 then
            for i = 0, 169 do
                table.insert(tiles, {name = 'landfill', position = {x, y}})
                x = x + 1
                a = a + 1
                if a == 13 then
                    x = x - 13
                    y = y + 1
                    b = b + 1
                    a = 0
                    if b == 13 then
                        y = y - 13
                        b = 0
                    end
                end
            end
            game.surfaces['nauvis'].set_tiles(tiles)
            local rock = Rocks[SelectedRock]
            if rock == 'bitumen-seep' then
                amount = math.random(1000, 2500)
            else
                amount = math.random(250000, 1000000)
            end
            game.surfaces['nauvis'].create_entity{name = rock, position = {Randx, Randy}, amount = amount}
            if global.firstrock == true then
                global.firstrock = false
            elseif global.firstrock == false and global.secondrock == true then
                global.secondrock = false
            end
        end
        if RandChance == 6 then
            local ship = game.surfaces['nauvis'].create_entity{
                name = crashedshipparts[math.random(1, 3)],
                position = {math.random(tx + 3, bx - 3), math.random(ty + 3, by - 3)},
                force = game.forces.player
            }
            local loot_rand_pick = math.random(1, 25)
            if loot_rand_pick > 20 and loot_rand_pick <= 25 then
                local rand = math.random(1, 5)
                ship.insert({name = loot_table_fuelrod[rand], count = math.random(1, 6)})
            elseif loot_rand_pick > 10 and loot_rand_pick < 20 then
                local rand = math.random(1, 8)
                ship.insert({name = loot_table_plates[rand], count = math.random(25, 100)})
            elseif loot_rand_pick > 0 and loot_rand_pick < 10 then
                local rand = math.random(1, 11)
                ship.insert({name = loot_table_basic_mats[rand], count = math.random(100, 500)})
            end
        end
    end)
]]--
end
