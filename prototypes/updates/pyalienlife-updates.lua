--RECIPE('Full Render Fish'):set_fields {enabled = true}
--RECIPE('guts-to-copper'):set_fields {enabled = true}
--RECIPE('blood-to-iron'):set_fields {enabled = true}
--RECIPE('meat-to-tin'):set_fields {enabled = true}

--[[
RECIPE('biomass-bones'):set_fields {enabled = true}
RECIPE('biomass-skin'):set_fields {enabled = true}
RECIPE('biomass-guts'):set_fields {enabled = true}
RECIPE('biomass-blood'):set_fields {enabled = true}
RECIPE('biomass-meat'):set_fields {enabled = true}
]]--

--Unlock all biomass compost recipes
--[[
for r, recipe in pairs(data.raw.recipe) do
    if recipe.category == 'compost' then
        recipe.enabled = true
    end
end
]]

--RECIPE('log-wood'):remove_unlock('botany-mk01'):set_fields {enabled = true}

--fish modules
--table.insert(data.raw.module['fish'].limitation, 'fish-start-01')
--table.insert(data.raw.module['fish'].limitation, 'fish-start-02')

--RECIPE('seaweed-crop-mk01'):add_unlock('botany-mk01'):set_fields {enabled = false}

--RECIPE('guar-nb'):remove_unlock('phytomining-mk02'):add_unlock('phytomining')
--RECIPE('nb-biomass-extraction'):remove_unlock('phytomining-mk02'):add_unlock('phytomining')
