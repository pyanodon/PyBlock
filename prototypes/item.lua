data:extend(
{
--new plates
	{
    type = "item",
    name = "scrap-iron",
    icon = "__base__/graphics/icons/ship-wreck/big-ship-wreck-1.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-material",
    order = "a[iron-plate]",
    stack_size = 100
	},
	{
    type = "item",
    name = "scrap-copper",
    icon = "__base__/graphics/icons/ship-wreck/medium-ship-wreck.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-material",
    order = "a[iron-plate]",
    stack_size = 100
	},
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
	
	--new buildings
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
	name = "basic-ddc",
	icon = "__PyBlock__/graphics/icons/hr-basic-ddc-icon.png",
	icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "coal-processing",
    order = "k",
    place_result = "basic-ddc",
    stack_size = 20
	},
	{
    type = "item",
    name = "starter-botanical-nursery",
    icon = "__pycoalprocessing__/graphics/icons/botanical-nursery.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "py-extraction",
    order = "f",
    place_result = "starter-botanical-nursery",
    stack_size = 10
	},
	{
    type = "item",
    name = "burner-soil-extractor",
    icon = "__pycoalprocessing__/graphics/icons/soil-extractormk01.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "py-extraction",
    order = "g",
    place_result = "burner-soil-extractor",
    stack_size = 10
	},
	{
    type = "item",
    name = "burner-quenching-tower",
    icon = "__pycoalprocessing__/graphics/icons/quenching-tower.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "coal-processing",
    order = "u",
    place_result = "burner-quenching-tower",
    stack_size = 10
	},
	{
    type = "item",
    name = "burner-washer",
    icon = "__pycoalprocessing__/graphics/icons/washer.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "coal-processing",
    order = "z2",
    place_result = "burner-washer",
    stack_size = 10
	},
	{
    type = "item",
    name = "burner-wpu",
    icon = "__pycoalprocessing__/graphics/icons/wpu.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "coal-processing",
    order = "c",
    place_result = "burner-wpu",
    stack_size = 10
	},
	
	--new items
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
	}
}
)