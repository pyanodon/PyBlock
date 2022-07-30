
local crashedshipparts = {
	'crash-site-spaceship', 'crash-site-spaceship-wreck-big-1',
	'crash-site-spaceship-wreck-big-2', 'crash-site-spaceship-wreck-medium-1', 'crash-site-spaceship-wreck-medium-2',
	'crash-site-spaceship-wreck-medium-3', 'crash-site-chest-1', 'crash-site-chest-2'
}

for c, crashed in pairs(crashedshipparts) do

  data.raw.container[crashed].inventory_size = 10
  data.raw.container[crashed].collision_mask = {}

end
