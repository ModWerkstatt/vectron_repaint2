function data()
local paramsutil = require "::/scripts/construction/param_util.tl"
local offsetXValues = {}
local offsetXNumbers = {}

for i = -1.0, 1.0, 0.1 do
    if math.abs(i) > 0.09 then
        table.insert(offsetXValues, tostring(i).."m")
        table.insert(offsetXNumbers, i)
    else
        table.insert(offsetXValues, "0.0m")
        table.insert(offsetXNumbers, 0)
    end
end

return { 
	constructionType = "ASSET_TRACK",
	description = { 
		name = _("vectron_assets"),			
		description = _("vectron_assets_desc"),
		icon = "icons/asset_vectron_icon@2x.tga",
		previewIcon = "icons/asset_vectron_preview@2x.tga",
	},
	menuCategory = {
		categories = {
			{
				category = "landscaping_vehicles",
				order = 5000,
			},
		},
	},
	buildMode = "MULTI",
	skipCollision = true,
	autoRemovable = false,
	  snapping = { 
		rail = true, 
		road = false, 
		water = false 
	  },
	order = 1,
	params = {
		{
			key = "vectron",
			name = _("auswahl_vectron"),
			uiType = "IconButton",
			values = { 
				"icons/fake_br193_ac_sbb_icon20@2x.tga", 
				"icons/fake_br193_ac_sbb2_icon20@2x.tga", 
				"icons/fake_br193_ms_sbb_icon20@2x.tga",  
				"icons/fake_br193_ms_sbb2_icon20@2x.tga",  
				"icons/fake_br193_ms_sbb3_icon20@2x.tga",  
				"icons/fake_br193_ms_sbb4_icon20@2x.tga",  
				"icons/fake_br193_ms_sbb5_icon20@2x.tga",  
				"icons/fake_br193_ms_sbb6_icon20@2x.tga",  
				"icons/fake_br193_ms_sbb7_icon20@2x.tga",  
				"icons/fake_br193_ms_sbb8_icon20@2x.tga",  
				"icons/fake_br193_ms_sbb9_icon20@2x.tga",  
				"icons/fake_br193_ms_sbb10_icon20@2x.tga",  
				"icons/fake_br193_ms_sbb11_icon20@2x.tga",  
				"icons/fake_br193_ms_sbb12_icon20@2x.tga",  
				"icons/fake_br193_ms_sbb13_icon20@2x.tga",  
				"icons/fake_br193_ms_sbb14_icon20@2x.tga",  
				"icons/fake_br193_ms_sbb15_icon20@2x.tga",  
				"icons/fake_br193_ms_sbb16_icon20@2x.tga",  },
			tooltip = _("tooltip_auswahl"),
			defaultIndex = 1,
		},
		{
			key = "offset_x",
			name = _("x_axis"),
			uiType = "Slider",
			values = offsetXValues,
			numbers = offsetXNumbers,
			tooltip = ("tooltip_offest_x"),
        },	
		paramsutil.makeRotationParam("constructOpt78", _("Rotation Y")),
	},
	
	updateScript = {
		fileName = "assets_vectron.script@updateFn",
		params = {
		},
	}
}

end