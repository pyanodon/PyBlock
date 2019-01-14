data:extend(
{
	{
    type = "item",
    name = "pb-wrought-iron-plate",
    icon = "__base__/graphics/icons/iron-plate.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-material",
    order = "a[iron-plate]",
    stack_size = 100
	},
	{
    type = "item",
    name = "cheap-iron-mine",
    icon = "__pyrawores__/graphics/icons/mega-iron.png",
	icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "py-rawores-mines",
    order = "a",
    place_result = "cheap-iron-mine",
    stack_size = 10
	},
	{
	type = "item",
	name = "wrought-iron-pipe",
	icon = "__PyBlock__/graphics/pipe.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
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
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-product",
    order = "c[iron-gear-wheel]",
    stack_size = 100
	},
	{
	type = "item",
	name = "basic-ddc",
	icon = "__PyBlock__/graphics/hr-basic-ddc.png",
	icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    place_result = "basic-ddc",
    stack_size = 20
	}

}
)