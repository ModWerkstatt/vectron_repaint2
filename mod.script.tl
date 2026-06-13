local mod = {}

mod.postRunFn = function(captureParams : NativeLuaTable, configDict : {{string, string}}, allModParams : {string : {string : integer}} )
	log.message("postRunFn called")

	local vorspann_hide: {{string}} = {
		[1] = { 
			"mw_vectron_repaint2::/vehicle/train/vectron/vorspann_br193_ac_sbb.mdl", },
		[2] = { }
	}
	local fake_hide: {{string}} = {
		[1] = {
			"mw_vectron_repaint2::/vehicle/train/vectron/fake_br193_ac_sbb.mdl",
			"mw_vectron_repaint2::/vehicle/train/vectron/fake_br193_ac_sbb2.mdl",
			"mw_vectron_repaint2::/vehicle/train/vectron/fake_br193_ms_sbb.mdl",
			"mw_vectron_repaint2::/vehicle/train/vectron/fake_br193_ms_sbb2.mdl",
			"mw_vectron_repaint2::/vehicle/train/vectron/fake_br193_ms_sbb3.mdl",
			"mw_vectron_repaint2::/vehicle/train/vectron/fake_br193_ms_sbb4.mdl",
			"mw_vectron_repaint2::/vehicle/train/vectron/fake_br193_ms_sbb5.mdl",
			"mw_vectron_repaint2::/vehicle/train/vectron/fake_br193_ms_sbb6.mdl",
			"mw_vectron_repaint2::/vehicle/train/vectron/fake_br193_ms_sbb7.mdl",
			"mw_vectron_repaint2::/vehicle/train/vectron/fake_br193_ms_sbb8.mdl",
			"mw_vectron_repaint2::/vehicle/train/vectron/fake_br193_ms_sbb9.mdl",
			"mw_vectron_repaint2::/vehicle/train/vectron/fake_br193_ms_sbb10.mdl",
			"mw_vectron_repaint2::/vehicle/train/vectron/fake_br193_ms_sbb11.mdl",
			"mw_vectron_repaint2::/vehicle/train/vectron/fake_br193_ms_sbb12.mdl",
			"mw_vectron_repaint2::/vehicle/train/vectron/fake_br193_ms_sbb13.mdl",
			"mw_vectron_repaint2::/vehicle/train/vectron/fake_br193_ms_sbb14.mdl",
			"mw_vectron_repaint2::/vehicle/train/vectron/fake_br193_ms_sbb15.mdl",
			"mw_vectron_repaint2::/vehicle/train/vectron/fake_br193_ms_sbb16.mdl", },
		[2] = { }
	}
	local assets_hide: {{string}} = {
		[1] = {
			"mw_vectron_repaint2::/vehicle/train/vectron/assets_vectron.con",
		},
		[2] = { }
	}
	
	local selectedfilter_vorspann: integer = allModParams[getCurrentModId()].br193_vorspann

	for _, v in ipairs(vorspann_hide[selectedfilter_vorspann]) do
		debugPrint("hide " .. v .. api.res.modelRep.find(v))
		api.res.modelRep.setVisible(api.res.modelRep.find(v), false)
	end

	local selectedfilter_fake: integer = allModParams[getCurrentModId()].br193_fake

	for _, v in ipairs(fake_hide[selectedfilter_fake]) do
		debugPrint("hide " .. v .. api.res.modelRep.find(v))
		api.res.modelRep.setVisible(api.res.modelRep.find(v), false)
	end
	
	local selectedfilter_assets: integer = allModParams[getCurrentModId()].br193_assets
	for _, v in ipairs(assets_hide[selectedfilter_assets]) do
		api.res.constructionRep.setVisible(api.res.constructionRep.find(v), false)
	end
	

end

return mod