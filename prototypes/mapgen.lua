-- data.raw["map-gen-presets"].default["pyblock-recommended"] = {
--   order = "i",
--   basic_settings = {
--     property_expression_names = {
--       elevation = "0_17-island"
--     },
--     -- terrain_segmentation = 0,
--     -- default_enable_all_autoplace_controls = false,
--     autoplace_settings = {
--       ["entity"] = {
--         treat_missing_as_default = false,
--         settings = {
--           fish = {
--             frequency = 1
--           },
--           driftwood = {
--             frequency = 1
--           },
--           seaweed = {
--             frequency = 1
--           }
--         }
--       }
--     },
--     autoplace_controls = {
--       ["enemy-base"] = {
--         frequency = 0
--       },
--       ["trees"] = {
--         frequency = 0
--       },
--       ["iron-ore"] = {
--         frequency = 0
--       },
--       ["copper-ore"] = {
--         frequency = 0
--       },
--       ["stone"] = {
--         frequency = 0
--       },
--       ["uranium-ore"] = {
--         frequency = 0
--       },
--       ["borax"] = {
--         frequency = 0
--       },
--       ["niobium"] = {
--         frequency = 0
--       },
--       ["molybdenum-ore"] = {
--         frequency = 0
--       },
--       ["volcanic-pipe"] = {
--         frequency = 0
--       },
--       ["regolites"] = {
--         frequency = 0
--       },
--       ["ore-quartz"] = {
--         frequency = 0
--       },
--       ["raw-coal"] = {
--         frequency = 0
--       },
--       ["ore-aluminium"] = {
--         frequency = 0
--       },
--       ["ore-chromium"] = {
--         frequency = 0
--       },
--       ["ore-lead"] = {
--         frequency = 0
--       },
--       ["ore-nickel"] = {
--         frequency = 0
--       },
--       ["ore-tin"] = {
--         frequency = 0
--       },
--       ["ore-titanium"] = {
--         frequency = 0
--       },
--       ["ore-zinc"] = {
--         frequency = 0
--       },
--       ["quartz-rock"] = {
--         frequency = 0
--       },
--       ["chromium-rock"] = {
--         frequency = 0
--       },
--       ["aluminium-rock"] = {
--         frequency = 0
--       },
--       ["copper-rock"] = {
--         frequency = 0
--       },
--       ["salt-rock"] = {
--         frequency = 0
--       },
--       ["iron-rock"] = {
--         frequency = 0
--       },
--       ["coal-rock"] = {
--         frequency = 0
--       },
--       ["lead-rock"] = {
--         frequency = 0
--       },
--       ["nickel-rock"] = {
--         frequency = 0
--       },
--       ["tin-rock"] = {
--         frequency = 0
--       },
--       ["titanium-rock"] = {
--         frequency = 0
--       },
--       ["uranium-rock"] = {
--         frequency = 0
--       },
--       ["zinc-rock"] = {
--         frequency = 0
--       },
--       ["phosphate-rock-02"] = {
--         frequency = 0
--       },
--       ["phosphate-rock"] = {
--         frequency = 0
--       },
--       ["rare-earth-bolide"] = {
--         frequency = 0
--       },
--       ["oil-sand"] = {
--         frequency = 0
--       },
--       ["sulfur-patch"] = {
--         frequency = 0
--       },
--       ["bitumen-seep"] = {
--         frequency = 0
--       },
--       ["ore-bioreserve"] = {
--         frequency = 0
--       },
--       ["ore-nexelit"] = {
--         frequency = 0
--       },
--       ["geothermal-crack"] = {
--         frequency = 0
--       },
--       ["ree"] = {
--         frequency = 0
--       },
--       ["antimonium"] = {
--         frequency = 0
--       },
--     },
--     cliff_settings = {
--       richness = 0
--     },
--   },
--   advanced_settings = {
--     pollution = {
--       enabled = false
--     }
--   }
-- }
data.raw["map-gen-presets"]["default"]["pyblock-recommended"] = {
  order = "i",
  basic_settings = {
    property_expression_names = {
      elevation = "elevation_island",
      moisture = "moisture_basic",
      aux = "aux_basic",
      cliffiness = "cliffiness_basic",
      cliff_elevation = "cliff_elevation_from_elevation",
      trees_forest_path_cutout = 1
    },
    cliff_settings = {
      cliff_smoothing = 1
    },
    no_enemies_mode = true,
    default_enable_all_autoplace_controls = false,
    autoplace_settings = {
      entity = {
        treat_missing_as_default = false,
        settings = {
          fish = {
            frequency = 1
          },
          driftwood = {
            frequency = 1
          },
          seaweed = {
            frequency = 1
          }
        }
      }
    },
    autoplace_controls = {
      ["trees"] = {
        frequency = 0
      },
      ["iron-ore"] = {
        frequency = 0
      },
      ["copper-ore"] = {
        frequency = 0
      },
      ["stone"] = {
        frequency = 0
      },
      ["uranium-ore"] = {
        frequency = 0
      },
      ["borax"] = {
        frequency = 0
      },
      ["niobium"] = {
        frequency = 0
      },
      ["molybdenum-ore"] = {
        frequency = 0
      },
      ["volcanic-pipe"] = {
        frequency = 0
      },
      ["regolites"] = {
        frequency = 0
      },
      ["ore-quartz"] = {
        frequency = 0
      },
      ["raw-coal"] = {
        frequency = 0
      },
      ["ore-aluminium"] = {
        frequency = 0
      },
      ["ore-chromium"] = {
        frequency = 0
      },
      ["ore-lead"] = {
        frequency = 0
      },
      ["ore-nickel"] = {
        frequency = 0
      },
      ["ore-tin"] = {
        frequency = 0
      },
      ["ore-titanium"] = {
        frequency = 0
      },
      ["ore-zinc"] = {
        frequency = 0
      },
      ["quartz-rock"] = {
        frequency = 0
      },
      ["chromium-rock"] = {
        frequency = 0
      },
      ["aluminium-rock"] = {
        frequency = 0
      },
      ["copper-rock"] = {
        frequency = 0
      },
      ["salt-rock"] = {
        frequency = 0
      },
      ["iron-rock"] = {
        frequency = 0
      },
      ["coal-rock"] = {
        frequency = 0
      },
      ["lead-rock"] = {
        frequency = 0
      },
      ["nickel-rock"] = {
        frequency = 0
      },
      ["tin-rock"] = {
        frequency = 0
      },
      ["titanium-rock"] = {
        frequency = 0
      },
      ["uranium-rock"] = {
        frequency = 0
      },
      ["zinc-rock"] = {
        frequency = 0
      },
      ["phosphate-rock-02"] = {
        frequency = 0
      },
      ["phosphate-rock"] = {
        frequency = 0
      },
      ["rare-earth-bolide"] = {
        frequency = 0
      },
      ["oil-sand"] = {
        frequency = 0
      },
      ["sulfur-patch"] = {
        frequency = 0
      },
      ["bitumen-seep"] = {
        frequency = 0
      },
      ["ore-bioreserve"] = {
        frequency = 0
      },
      ["ore-nexelit"] = {
        frequency = 0
      },
      ["geothermal-crack"] = {
        frequency = 0
      },
      ["ree"] = {
        frequency = 0
      },
      ["antimonium"] = {
        frequency = 0
      },
    }
  },
  advanced_settings = {
    pollution = {
      enabled = false
    }
  }
}