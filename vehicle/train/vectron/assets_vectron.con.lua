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
				category = "landscaping_assets",
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
				"icons/fake_br191_dc_beacon_icon20@2x.tga", 
				"icons/fake_br191_dc_mrce_icon20@2x.tga", 
				"icons/fake_br192_northrail_icon20@2x.tga", 
				"icons/fake_br193_ac_beacon_icon20@2x.tga", 
				"icons/fake_br193_ac_beacon_zza_icon20@2x.tga", 
				"icons/fake_br193_ac_ell_icon20@2x.tga", 
				"icons/fake_br193_ac_mrce_icon20@2x.tga", 
				"icons/fake_br193_ac_mrce_zza_icon20@2x.tga", 
				"icons/fake_br193_ms_beacon_icon20@2x.tga", 
				"icons/fake_br193_ms_beacon2_icon20@2x.tga", 
				"icons/fake_br193_ms_beacon3_icon20@2x.tga", 
				"icons/fake_br193_ms_beacon4_icon20@2x.tga", 
				"icons/fake_br193_ms_beacon5_icon20@2x.tga",
				"icons/fake_br193_ms_ell_icon20@2x.tga", 
				"icons/fake_br193_ms_hupac_icon20@2x.tga", 
				"icons/fake_br193_ms_mrce_icon20@2x.tga", 
				"icons/fake_br193_ms_rpool_icon20@2x.tga", 
				"icons/fake_br193_ms_rsl_icon20@2x.tga", 
				"icons/fake_br193_sk_akiem_icon20@2x.tga", 
				"icons/fake_br193_sk_atlu_icon20@2x.tga", 
				"icons/fake_br193_sk_rpool_icon20@2x.tga", 
				"icons/fake_br248_atlu_icon20@2x.tga", 
				"icons/fake_br248_northrail_icon20@2x.tga", 
				"icons/fake_br248_northrail2_icon20@2x.tga",
				"icons/fake_br248_northrail3_icon20@2x.tga",
				"icons/fake_br248_northrail4_icon20@2x.tga",  },
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