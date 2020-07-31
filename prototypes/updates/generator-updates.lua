
local ores = {
	'stone',
	'iron-ore',
	'copper-ore',
	'uranium-ore',
	--'enemy-base',
	'ore-aluminium',
	'ore-chromium',
	'ore-lead',
	'ore-nickel',
	'ore-quartz',
	'ore-tin',
	'ore-titanium',
	'ore-zinc',
	'raw-coal',
	'ore-bioreserve',
	'niobium',
	'borax',
	'oil-sand'
}
for _, ore in ipairs(ores) do
	data.raw.resource[ore].autoplace = nil
	data.raw['autoplace-control'][ore] = nil

	for _, preset in pairs(data.raw["map-gen-presets"]["default"]) do
		if preset and preset.basic_settings and preset.basic_settings.autoplace_controls and preset.basic_settings.autoplace_controls[ore] then
		  preset.basic_settings.autoplace_controls[ore] = nil
		end
	end
end
