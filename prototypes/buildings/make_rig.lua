return function (name, connection_definitions, rocket_parts, crafting_category)
  ITEM(name).place_result = name .. "-silo"

  if data.raw["mining-drill"][name] then
    local drill = ENTITY(name)
    local silo = ENTITY{
      type = "rocket-silo",
      name = name .. "-silo",
      icon = drill.icon,
      icon_size = drill.icon_size,
      icons = drill.icons,
      flags = table.deepcopy(drill.flags),
      minable = drill.minable,
      max_health = drill.max_health,
      corpse = drill.corpse,
      dying_explosion = drill.dying_explosion,
      collision_box = table.deepcopy(drill.collision_box),
      selection_box = table.deepcopy(drill.selection_box),
      crafting_categories = {crafting_category},
      rocket_parts_required = rocket_parts,
      crafting_speed = 1,
      to_be_inserted_to_rocket_inventory_size = 1,
      show_recipe_icon = false,
      show_recipe_icon_on_map = false,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        drain = drill.energy_source.drain
      },
      fluid_boxes_off_when_no_fluid_recipe = false,
      fluid_boxes = {
        {}, -- propogate later
        {}, -- also propogate later
        {
          production_type = "output",
          pipe_picture = table.deepcopy(drill.input_fluid_box.pipe_picture),
          pipe_covers = table.deepcopy(drill.input_fluid_box.pipe_covers),
          volume = 100,
          pipe_connections = {
            { flow_direction = "input-output", connection_type = "linked", linked_connection_id = 3 },
            connection_definitions[1],
          },
          filter = "drilling-fluid-0"
        },
        {
          production_type = "output",
          pipe_picture = table.deepcopy(drill.input_fluid_box.pipe_picture),
          pipe_covers = table.deepcopy(drill.input_fluid_box.pipe_covers),
          volume = 100,
          pipe_connections = {
            { flow_direction = "input-output", connection_type = "linked", linked_connection_id = 4 },
            connection_definitions[2],
          },
          filter = "drilling-fluid-1"
        },
        {
          production_type = "output",
          pipe_picture = table.deepcopy(drill.input_fluid_box.pipe_picture),
          pipe_covers = table.deepcopy(drill.input_fluid_box.pipe_covers),
          volume = 100,
          pipe_connections = {
            { flow_direction = "input-output", connection_type = "linked", linked_connection_id = 5 },
            connection_definitions[3],
          },
          filter = "drilling-fluid-2"
        },
        {
          production_type = "output",
          pipe_picture = table.deepcopy(drill.input_fluid_box.pipe_picture),
          pipe_covers = table.deepcopy(drill.input_fluid_box.pipe_covers),
          volume = 100,
          pipe_connections = {
            { flow_direction = "input-output", connection_type = "linked", linked_connection_id = 6 },
            connection_definitions[4],
          },
          filter = "drilling-fluid-3"
        },
      },
      energy_usage = drill.energy_usage, --energy usage used when crafting the rocket
      idle_energy_usage = "0W",
      lamp_energy_usage = "0W",
      active_energy_usage = "1W",
      rocket_entity = "mega-farm-invisa-rocket",
      rocket_quick_relaunch_start_offset = 0,
      cargo_station_parameters = {hatch_definitions = {{}}},
      times_to_blink = 1,
      light_blinking_speed = 1,
      door_opening_speed = 1 / (4.25 * 60),
      hole_clipping_box = {{-0.5, -0.5}, {0.5, 0.5}},
      door_front_open_offset = {-1.8, 1.8 * 0.43299225},
      door_back_open_offset = {1.8, -1.8 * 0.43299225},
      rocket_rising_delay = 1,
      launch_wait_time = 1,
      launch_to_space_platforms = false,
      can_launch_without_landing_pads = true,
      silo_fade_out_start_distance = 0,
      silo_fade_out_end_distance = 0,
      allowed_effects = {},
      module_slots = 0,
      working_sound = drill.working_sound,
      stateless_visualisation = table.deepcopy(drill.graphics_set)
    }
    silo.fluid_boxes[1] = table.deepcopy(drill.output_fluid_box)
    for _, pipe_connection in pairs(silo.fluid_boxes[1].pipe_connections) do
      pipe_connection.flow_direction = "input-output"
    end
    silo.fluid_boxes[1].production_type = "output"
    silo.fluid_boxes[1].pipe_connections[#silo.fluid_boxes[1].pipe_connections+1] = {
      flow_direction = "input-output",
      connection_type = "linked",
      linked_connection_id = 1
    }
    silo.fluid_boxes[2] = table.deepcopy(drill.input_fluid_box)
    for _, pipe_connection in pairs(silo.fluid_boxes[2].pipe_connections) do
      pipe_connection.flow_direction = "input-output"
    end
    silo.fluid_boxes[2].production_type = "output"
    silo.fluid_boxes[2].pipe_connections[#silo.fluid_boxes[2].pipe_connections+1] = {
      flow_direction = "input-output",
      connection_type = "linked",
      linked_connection_id = 2
    }

    ENTITY {
      type = "assembling-machine",
      name = name .. "-base",
      icon = drill.icon,
      icon_size = drill.icon_size,
      icons = drill.icons,
      flags = {
        "placeable-neutral",
        "not-selectable-in-game",
        "no-copy-paste",
        "not-blueprintable",
        "not-deconstructable",
        "not-on-map",
        "not-repairable"
      },
      selectable_in_game = false,
      selection_priority = 1,
      collision_box = drill.collision_box,
      collision_mask = {layers = {}},
      energy_source = {type = "void"},
      fluid_boxes = {
        {
          production_type = "input",
          volume = 100,
          pipe_connections = {{ flow_direction = "input", connection_type = "linked", linked_connection_id = 1 }},
          filter = "drilling-fluid-0"
        },
        {
          production_type = "input",
          volume = 100,
          pipe_connections = {{ flow_direction = "input", connection_type = "linked", linked_connection_id = 2 }},
          filter = "drilling-fluid-1"
        },
        {
          production_type = "input",
          volume = 100,
          pipe_connections = {{ flow_direction = "input", connection_type = "linked", linked_connection_id = 3 }},
          filter = "drilling-fluid-2"
        },
        {
          production_type = "input",
          volume = 100,
          pipe_connections = {{ flow_direction = "input", connection_type = "linked", linked_connection_id = 4 }},
          filter = "drilling-fluid-3"
        },
      },
      fixed_recipe = "drilling-fluids",
      energy_usage = "1W",
      crafting_speed = 1,
      crafting_categories = {"drilling-fluid"},
      allowed_effects = {},
      module_slots = 0,
    }

    -- make changes AFTER things are copied over
    drill:set_fields{
      selectable_in_game = false,
      selection_priority = 1,
      collision_mask = {layers = {}},
      module_slots = 0,
      flags = {
        "placeable-neutral",
        "not-selectable-in-game",
        "no-copy-paste",
        "not-blueprintable",
        "not-deconstructable",
        "not-on-map",
        "not-repairable"
      }
    }
    drill.minable = nil
    drill.graphics_set = nil
    drill.selection_box = nil
    drill.output_fluid_box.pipe_connections = {{flow_direction = "input-output", connection_type = "linked", linked_connection_id = 1}}
    drill.input_fluid_box.pipe_connections = {{flow_direction = "input-output", connection_type = "linked", linked_connection_id = 2}}

  elseif data.raw["assembling-machine"][name] then

  else
    error("ERROR! no entity found: " .. name)
  end

end