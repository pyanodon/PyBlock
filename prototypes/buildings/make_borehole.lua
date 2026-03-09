return function (name)
  local old = assert(data.raw.resource[name], "ERROR: no entity found: " .. name)

  -- copy of geothermal crack to represent drilling
  local new = table.deepcopy(old)
  new.name = name .. "-borehole"
  new.minable.results = {}
  new.minable.fluid_amount = 0

  data:extend{new}
end