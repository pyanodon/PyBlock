data:extend(
{
--new plates
	{
    type = "item",
    name = "scrap-iron",
    icon = "__base__/graphics/icons/ship-wreck/big-ship-wreck-1.png",
    icon_size = 32,
    flags = {},
    subgroup = "raw-material",
    order = "a[iron-plate]",
    stack_size = 500
	},
	{
    type = "item",
    name = "scrap-copper",
    icon = "__base__/graphics/icons/ship-wreck/medium-ship-wreck.png",
    icon_size = 32,
    flags = {},
    subgroup = "raw-material",
    order = "a[iron-plate]",
    stack_size = 500
	},
	{
    type = "item",
    name = "pb-wrought-iron-plate",
    icon = "__base__/graphics/icons/iron-plate.png",
    icon_size = 64,
    flags = {},
    subgroup = "raw-material",
    order = "a[iron-plate]",
    stack_size = 500
	},
	{
	type = "item",
	name = "wrought-iron-pipe",
	icon = "__PyBlock__/graphics/pipe.png",
	icon_size = 32,
	flags = {},
	subgroup = "energy-pipe-distribution",
	order = "a[pipe]-c[pipe]",
	place_result = "wrought-iron-pipe",
	stack_size = 100
	},
	{
    type = "item",
    name = "wrought-iron-gear-wheel",
    icon = "__PyBlock__/graphics/iron-gear-wheel.png",
    icon_size = 32,
    flags = {},
    subgroup = "intermediate-product",
    order = "c[iron-gear-wheel]",
    stack_size = 100
	},
}
)