
function make_2way_animation_from_spritesheet(animation)
  local function make_animation_layer(idx, anim)
    return
    {
      filename = anim.filename,
      priority = anim.priority or "high",
      x = idx * anim.width,
      width = anim.width,
      height = anim.height,
      frame_count = anim.frame_count or 1,
      line_length = anim.line_length,
      shift = anim.shift,
      draw_as_shadow = anim.draw_as_shadow,
      apply_runtime_tint = anim.apply_runtime_tint,
      scale = anim.scale or 1,
      tint = anim.tint
    }
  end

  local function make_animation_layer_with_hr_version(idx, anim)
    local anim_parameters = make_animation_layer(idx, anim)
    if anim.hr_version and anim.hr_version.filename then
      anim_parameters.hr_version = make_animation_layer(idx, anim.hr_version)
    end
    return anim_parameters
  end

  local function make_animation(idx)
    if animation.layers then
      local tab = { layers = {} }
      for k,v in ipairs(animation.layers) do
        table.insert(tab.layers, make_animation_layer_with_hr_version(idx, v))
      end
      return tab
    else
      return make_animation_layer_with_hr_version(idx, animation)
    end
  end

  return
  {
    north = make_animation(0),
    east = make_animation(1),
    south = make_animation(0),
    west = make_animation(1)
  }
end

RECIPE {
	type = "recipe",
	name = "basic-ddc",
	energy_required = 8,
	enabled = true,
    ingredients =
    {
		{name = "iron-plate", amount = 15},
		{name = "stone-furnace", amount = 1},
		{name = "pipe", amount = 5}
	},
	results = {
		{name = "basic-ddc", amount = 1}
	}
}

ITEM {
	type = "item",
	name = "basic-ddc",
	icon = "__PyBlock__/graphics/icons/distilator-mk00.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-cp-buildings-mk00",
    order = "k",
    place_result = "basic-ddc",
    stack_size = 20
}

ENTITY {
  type = "assembling-machine",
  name = "basic-ddc",
  icon = "__PyBlock__/graphics/icons/distilator-mk00.png",
  icon_size = 64,
  flags = {"placeable-neutral", "placeable-player", "player-creation"},
  minable = {mining_time = 1, result = "basic-ddc"},
  max_health = 200,
  corpse = "medium-remnants",
  repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
  mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
  open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
  close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
  vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
  working_sound = { sound = { filename = "__base__/sound/furnace.ogg" }},
  resistances = {
    { type = "fire", percent = 90 },
    { type = "explosion", percent = 30 },
    { type = "impact", percent = 30 }
  },
  collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
  selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
  fluid_boxes = {
    {
      production_type = "output",
      volume = 100,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { flow_direction = "output", position = {-1, -1}, direction = 0 },
        { flow_direction = "output", position = {-1, -1}, direction = 12 }
      }
    },
    {
      production_type = "output",
      volume = 100,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { flow_direction = "output", position = {1, 1}, direction = 4 },
        { flow_direction = "output", position = {1, 1}, direction = 8 }
      }
    }
  },
  fluid_boxes_off_when_no_fluid_recipe = true,
  crafting_categories = {"distilator"},
  crafting_speed = 0.5,
  result_inventory_size = 2,
  energy_usage = "200kW",
  source_inventory_size = 1,
  energy_source = {
    type = "burner",
    fuel_categories = {"chemical", "biomass"},
    effectivity = 1,
    fuel_inventory_size = 1,
    burnt_inventory_size = 1,
    emissions = 0.01,
    smoke = {
      {
        name = "smoke",
        deviation = {0.1, 0.1},
        frequency = 5,
        position = {0.0, -0.8},
        starting_vertical_speed = 0.08,
        starting_frame_deviation = 60
      }
    }
  },
  graphics_set = {
    animation = make_2way_animation_from_spritesheet({ layers = {
      {
        filename = "__PyBlock__/graphics/hr-basic-ddc.png",
        priority = "extra-high",
        width = 219,
        height = 215,
        frame_count = 1,
        shift = util.by_pixel(0, 4),
        scale = 0.5,
        hr_version =
        {
          filename = "__PyBlock__/graphics/hr-basic-ddc.png",
          priority = "extra-high",
          width = 219,
          height = 215,
          frame_count = 1,
          shift = util.by_pixel(-0.25, 3.75),
          scale = 0.5
        }
      },
      {
        filename = "__base__/graphics/entity/storage-tank/storage-tank-shadow.png",
        priority = "extra-high",
        width = 146,
        height = 77,
        frame_count = 1,
        shift = util.by_pixel(30, 22.5),
        draw_as_shadow = true,
        hr_version =
        {
          filename = "__base__/graphics/entity/storage-tank/hr-storage-tank-shadow.png",
          priority = "extra-high",
          width = 291,
          height = 153,
          frame_count = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(29.75, 22.25),
          scale = 0.5
        }
      }
    }}),
    working_visualisations = {
      {
        north_position = {0.0, 0.0},
        east_position = {0.0, 0.0},
        south_position = {0.0, 0.0},
        west_position = {0.0, 0.0},
        animation = {
          filename = "__base__/graphics/entity/stone-furnace/stone-furnace-fire.png",
          priority = "extra-high",
          line_length = 8,
          width = 20,
          height = 49,
          frame_count = 48,
          axially_symmetrical = false,
          direction_count = 1,
          shift = util.by_pixel(2, 21.5),
          hr_version = {
            filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-fire.png",
            priority = "extra-high",
            line_length = 8,
            width = 41,
            height = 100,
            frame_count = 48,
            axially_symmetrical = false,
            direction_count = 1,
            shift = util.by_pixel(-0.75, 21.5),
            scale = 0.5
          }
        },
        light = {intensity = 1, size = 1, color = {r=1.0, g=1.0, b=1.0}}
      }
    }
  }
}
