
--ANTIMONY TWEAKS 
RECIPE("mining-iron"):remove_unlock("excavation-1"):add_unlock("excavation-2")

RECIPE("sand-extractor"):remove_ingredient("niobium-plate"):remove_ingredient("intermetallics"):remove_ingredient("chromium")

RECIPE("fish-oil-to-lube"):remove_unlock("fish-mk02"):add_unlock("excavation-1")

TECHNOLOGY("drill-head-mk01"):remove_pack("logistic-science-pack"):add_pack("py-science-pack-1")

RECIPE("drill-head-3"):remove_unlock("drill-head-mk01"):add_unlock("excavation-1")

-- move acrolein to tbp so that it can be made in py2
RECIPE("acrolein"):remove_unlock("microfibers"):add_unlock("tbp")
RECIPE("acrolein2"):remove_unlock("microfibers"):add_unlock("tbp")
TECHNOLOGY("tbp"):remove_pack("chemical-science-pack"):add_pack("py-science-pack-2")

RECIPE("fuel-cell-dissolve"):replace_ingredient("depleted-uranium-fuel-cell", "depleted-uranium-fuel-cell", 5)