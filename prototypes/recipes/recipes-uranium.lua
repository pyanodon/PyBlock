
--recover uranium from seawater

RECIPE {
    type = "recipe",
    name = "sodium-acetate",
    category = "biofactory",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "sodium-carbonate", amount = 4},
        {type = "fluid", name = "acetic-acid", amount = 50},
    },
    results = {
        {type = "item", name = "sodium-acetate", amount = 50},

    },
    main_product = "sodium-acetate",
    subgroup = "py-rawores-uranium",
    order = "a"
}:add_unlock("uranium-processing")

RECIPE {
    type = "recipe",
    name = "ethane",
    category = "electrolyzer",
    enabled = false,
    energy_required = 12,
    ingredients = {
        {type = "item", name = "sodium-acetate", amount = 10},
        {type = "fluid", name = "water", amount = 200},
    },
    results = {
        {type = "fluid", name = "ethane", amount = 42},
        {type = "fluid", name = "carbon-dioxide", amount = 40},
        {type = "fluid", name = "hydrogen", amount = 15},
        {type = "item", name = "sodium-hydroxide", amount = 5},
    },
    main_product = "ethane",
    subgroup = "py-rawores-uranium",
    order = "c"
}:add_unlock("uranium-processing")

RECIPE {
    type = "recipe",
    name = "dichloroethane",
    category = "chemistry",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "ethane", amount = 27},
        {type = "fluid", name = "chlorine", amount = 30},
        {type = "item", name = "fecl3", amount = 9},
    },
    results = {
        {type = "fluid", name = "dichloroethane", amount = 60},
        {type = "item", name = "fecl3", amount = 7},
    },
    main_product = "dichloroethane",
    subgroup = "py-rawores-uranium",
    order = "d"
}:add_unlock("uranium-processing")

--iron2 chloride
RECIPE {
    type = "recipe",
    name = "fecl2",
    category = "chemistry",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "item", name = "iron-ore", amount = 10},
        {type = "fluid", name = "hydrogen-chloride", amount = 60},
    },
    results = {
        {type = "item", name = "fecl2", amount = 8},
    },
    main_product = "fecl2",
    subgroup = "py-rawores-uranium",
    order = "e"
}:add_unlock("uranium-processing")

--iron3 chloride
RECIPE {
    type = "recipe",
    name = "fecl3",
    category = "chemistry",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item", name = "fecl2", amount = 15},
        {type = "fluid", name = "hydrogen-peroxide", amount = 40},
    },
    results = {
        {type = "item", name = "fecl3", amount = 5},
    },
    main_product = "fecl3",
    subgroup = "py-rawores-uranium",
    order = "f"
}:add_unlock("uranium-processing")

RECIPE {
    type = "recipe",
    name = "ethylenediamine",
    category = "fbreactor",
    enabled = false,
    energy_required = 12,
    ingredients = {
        {type = "fluid", name = "dichloroethane", amount = 50},
        {type = "fluid", name = "ammonia", amount = 100},
        {type = "fluid", name = "water", amount = 200},
    },
    results = {
        {type = "fluid", name = "ethylenediamine", amount = 100},
        {type = "fluid", name = "hydrogen-chloride", amount = 40},
    },
    main_product = "ethylenediamine",
    subgroup = "py-rawores-uranium",
    order = "g"
}:add_unlock("uranium-processing")

--nylon rope
RECIPE {
    type = "recipe",
    name = "nylon-rope",
    category = "crafting",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "item", name = "nylon", amount = 12},
    },
    results = {
        {type = "item", name = "nylon-rope", amount = 15},
    },
    main_product = "nylon-rope",
    subgroup = "py-rawores-uranium",
    order = "h"
}:add_unlock("uranium-processing")

RECIPE {
    type = "recipe",
    name = "nylon-rope-coated",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 9,
    ingredients = {
        {type = "item", name = "nylon-rope", amount = 10},
        {type = "fluid", name = "ethylenediamine", amount = 150},
    },
    results = {
        {type = "item", name = "nylon-rope-coated", amount = 10},
    },
    main_product = "nylon-rope-coated",
    subgroup = "py-rawores-uranium",
    order = "i"
}:add_unlock("uranium-processing")

RECIPE {
    type = "recipe",
    name = "nylon-rope-uranyl-soaked",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "nylon-rope-coated", amount = 30},
        {type = "fluid", name = "water", amount = 4000},
    },
    results = {
        {type = "item", name = "nylon-rope-uranyl-soaked", amount = 30},
    },
    main_product = "nylon-rope-uranyl-soaked",
    subgroup = "py-rawores-uranium",
    order = "j"
}:add_unlock("uranium-processing")

RECIPE {
    type = "recipe",
    name = "uranyl-nitrate",
    category = "scrubber",
    enabled = false,
    energy_required = 42,
    ingredients = {
        {type = "item", name = "nylon-rope-uranyl-soaked", amount = 4},
        {type = "item", name = "tbp", amount = 10},
    },
    results = {
        {type = "item", name = "uranyl-nitrate", amount = 10, probability = .6},
    },
    main_product = "uranyl-nitrate",
    subgroup = "py-rawores-uranium",
    order = "k"
}:add_unlock("uranium-processing")

RECIPE {
    type = "recipe",
    name = "uranium-ore",
    category = "leaching",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "uranyl-nitrate", amount = 12},
        {type = "fluid", name = "kerosene", amount = 50},
    },
    results = {
        {type = "item", name = "uranium-ore", amount = 12},
    },
    main_product = "uranium-ore",
    subgroup = "py-rawores-uranium",
    order = "l"
}:add_unlock("uranium-processing")
