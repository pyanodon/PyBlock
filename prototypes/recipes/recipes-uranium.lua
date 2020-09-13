
--recover uranium from seawater

RECIPE {
    type = "recipe",
    name = "sodium-acetate",
    category = "biofactory",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "sodium-carbonate", amount = 4},
        {type = 'fluid', name = 'acetic-acid', amount = 50},
    },
    results = {
        {type = "item", name = "sodium-acetate", amount = 40},

    },
    main_product = "sodium-acetate",
    --icon = "__pyalienlifegraphics__/graphics/icons/biosample.png",
    --icon_size = 64,
    subgroup = "py-rawores-uranium",
    order = "a"
}:add_unlock('uranium-mk01')

RECIPE {
    type = "recipe",
    name = "ethane",
    category = "electrolyzer",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "sodium-acetate", amount = 10},
        {type = 'fluid', name = 'water', amount = 200},
    },
    results = {
        {type = "fluid", name = "ethane", amount = 40},
        {type = "fluid", name = "carbon-dioxide", amount = 40},
        {type = "fluid", name = "hydrogen", amount = 15},
        {type = "item", name = "sodium-hydroxide", amount = 5},
    },
    main_product = "ethane",
    --icon = "__pyalienlifegraphics__/graphics/icons/biosample.png",
    --icon_size = 64,
    subgroup = "py-rawores-uranium",
    order = "c"
}:add_unlock('uranium-mk01')

RECIPE {
    type = "recipe",
    name = "dichloroethane",
    category = "chemistry",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "ethane", amount = 30},
        {type = 'fluid', name = 'chlorine', amount = 30},
        {type = "item", name = "fecl3", amount = 5},
    },
    results = {
        {type = "fluid", name = "dichloroethane", amount = 40},
        {type = "item", name = "fecl3", amount = 3},
    },
    main_product = "dichloroethane",
    --icon = "__pyalienlifegraphics__/graphics/icons/biosample.png",
    --icon_size = 64,
    subgroup = "py-rawores-uranium",
    order = "d"
}:add_unlock('uranium-mk01')

--iron2 chloride
RECIPE {
    type = "recipe",
    name = "fecl2",
    category = "chemistry",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "iron-ore", amount = 10},
        {type = 'fluid', name = 'hydrogen-chloride', amount = 60},
    },
    results = {
        {type = "item", name = "fecl2", amount = 8},
    },
    main_product = "fecl2",
    --icon = "__pyalienlifegraphics__/graphics/icons/biosample.png",
    --icon_size = 64,
    subgroup = "py-rawores-uranium",
    order = "e"
}:add_unlock('uranium-mk01')

--iron3 chloride
RECIPE {
    type = "recipe",
    name = "fecl3",
    category = "chemistry",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "fecl2", amount = 15},
        {type = 'fluid', name = 'hydrogen-peroxide', amount = 40},
    },
    results = {
        {type = "item", name = "fecl3", amount = 5},
    },
    main_product = "fecl3",
    --icon = "__pyalienlifegraphics__/graphics/icons/biosample.png",
    --icon_size = 64,
    subgroup = "py-rawores-uranium",
    order = "f"
}:add_unlock('uranium-mk01')

RECIPE {
    type = "recipe",
    name = "ethylenediamine",
    category = "fbreactor",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'fluid', name = 'dichloroethane', amount = 50},
        {type = 'fluid', name = 'ammonia', amount = 100},
        {type = 'fluid', name = 'water', amount = 200},
    },
    results = {
        {type = "fluid", name = "ethylenediamine", amount = 100},
        {type = "fluid", name = "hydrogen-chloride", amount = 40},
    },
    main_product = "ethylenediamine",
    --icon = "__pyalienlifegraphics__/graphics/icons/biosample.png",
    --icon_size = 64,
    subgroup = "py-rawores-uranium",
    order = "g"
}:add_unlock('uranium-mk01')

--nylon rope
RECIPE {
    type = "recipe",
    name = "nylon-rope",
    category = "crafting",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = 'item', name = 'nylon', amount = 12},
    },
    results = {
        {type = "item", name = "nylon-rope", amount = 15},
    },
    main_product = "nylon-rope",
    --icon = "__pyalienlifegraphics__/graphics/icons/biosample.png",
    --icon_size = 64,
    subgroup = "py-rawores-uranium",
    order = "h"
}:add_unlock('uranium-mk01')

RECIPE {
    type = "recipe",
    name = "nylon-rope-coated",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = 'item', name = 'nylon-rope', amount = 10},
        {type = "fluid", name = "ethylenediamine", amount = 75},
    },
    results = {
        {type = "item", name = "nylon-rope-coated", amount = 10},
    },
    main_product = "nylon-rope-coated",
    --icon = "__pyalienlifegraphics__/graphics/icons/biosample.png",
    --icon_size = 64,
    subgroup = "py-rawores-uranium",
    order = "i"
}:add_unlock('uranium-mk01')

RECIPE {
    type = "recipe",
    name = "nylon-rope-uranyl-soaked",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'nylon-rope-coated', amount = 60},
        {type = "fluid", name = "water", amount = 1000},
    },
    results = {
        {type = "item", name = "nylon-rope-uranyl-soaked", amount = 60},
    },
    main_product = "nylon-rope-uranyl-soaked",
    --icon = "__pyalienlifegraphics__/graphics/icons/biosample.png",
    --icon_size = 64,
    subgroup = "py-rawores-uranium",
    order = "j"
}:add_unlock('uranium-mk01')

RECIPE {
    type = "recipe",
    name = "uranyl-nitrate",
    category = "scrubber",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'nylon-rope-uranyl-soaked', amount = 15},
        {type = "fluid", name = "tributyl-phosphate", amount = 75},
    },
    results = {
        {type = "item", name = "uranyl-nitrate", amount = 10},
    },
    main_product = "uranyl-nitrate",
    --icon = "__pyalienlifegraphics__/graphics/icons/biosample.png",
    --icon_size = 64,
    subgroup = "py-rawores-uranium",
    order = "k"
}:add_unlock('uranium-mk01')

RECIPE {
    type = "recipe",
    name = "uranium-ore",
    category = "leaching",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = 'item', name = 'uranyl-nitrate', amount = 20},
        {type = "fluid", name = "kerosene", amount = 50},
    },
    results = {
        {type = "item", name = "uranium-ore", amount = 10},
    },
    main_product = "uranium-ore",
    --icon = "__pyalienlifegraphics__/graphics/icons/biosample.png",
    --icon_size = 64,
    subgroup = "py-rawores-uranium",
    order = "l"
}:add_unlock('uranium-mk01')