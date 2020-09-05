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
    --uranium stuffs
    {
    type = "item",
    name = "sodium-acetate",
    icon = "__PyBlock__/graphics/icons/sodium-acetate.png",
    icon_size = 64,
    flags = {},
    subgroup = 'py-rawores-uranium',
    order = 'uaa',
    stack_size = 100
    },
    --iron 2 chloride
    {
    type = "item",
    name = "fecl2",
    icon = "__PyBlock__/graphics/icons/ferrous-chloride.png",
    icon_size = 64,
    flags = {},
    subgroup = 'py-rawores-uranium',
    order = 'uab',
    stack_size = 100
    },
    --iron 3 chloride
    {
    type = "item",
    name = "fecl3",
    icon = "__PyBlock__/graphics/icons/Ferric-chloride.png",
    icon_size = 64,
    flags = {},
    subgroup = 'py-rawores-uranium',
    order = 'uac',
    stack_size = 100
    },
    {
    type = "item",
    name = "nylon-rope",
    icon = "__PyBlock__/graphics/icons/nylon-rope.png",
    icon_size = 64,
    flags = {},
    subgroup = 'py-rawores-uranium',
    order = 'uad',
    stack_size = 100
    },
    {
    type = "item",
    name = "nylon-rope-coated",
    icon = "__PyBlock__/graphics/icons/nylon-rope-coated.png",
    icon_size = 64,
    flags = {},
    subgroup = 'py-rawores-uranium',
    order = 'uae',
    stack_size = 100
    },
    {
    type = "item",
    name = "nylon-rope-uranyl-soaked",
    icon = "__PyBlock__/graphics/icons/nylon-rope-uranyl-soaked.png",
    icon_size = 64,
    flags = {},
    subgroup = 'py-rawores-uranium',
    order = 'uaf',
    stack_size = 100
    },
    {
    type = "item",
    name = "uranyl-nitrate",
    icon = "__PyBlock__/graphics/icons/uranylnitrate-crystals.png",
    icon_size = 64,
    flags = {},
    subgroup = 'py-rawores-uranium',
    order = 'uag',
    stack_size = 100
    },
}
)