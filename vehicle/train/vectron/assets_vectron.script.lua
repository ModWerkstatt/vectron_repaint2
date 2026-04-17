local constructionutil = require "::/scripts/construction/constructionutil.lua"
local paramsutil = require "::/scripts/construction/param_util.tl"
local transf = require "::/scripts/mat4.tl"
local vec3 = require "::/scripts/vec3.tl"

local constructionutil = require "::/scripts/construction/constructionutil.lua"

function data()
    return {
        updateFn = function(captureParams, params)
            local subconstruction = {}
                    
            local offset_x = params.offset_x and params.offset_x or 0
            
            local locomotiveModels = {
			
                [1] = "fake_br191_dc_beacon.mdl",
                [2] = "fake_br191_dc_mrce.mdl",
                [3] = "fake_br192_northrail.mdl",
                [4] = "fake_br193_ac_beacon.mdl",
                [5] = "fake_br193_ac_beacon_zza.mdl",
                [6] = "fake_br193_ac_ell.mdl",
                [7] = "fake_br193_ac_mrce.mdl",
                [8] = "fake_br193_ac_mrce_zza.mdl",
                [9] = "fake_br193_ms_beacon.mdl",
                [10] ="fake_br193_ms_beacon2.mdl",
                [11] ="fake_br193_ms_beacon3.mdl",
                [12] = "fake_br193_ms_beacon4.mdl",
                [13] = "fake_br193_ms_beacon5.mdl",
                [14] = "fake_br193_ms_ell.mdl",
                [15] = "fake_br193_ms_hupac.mdl",
                [16] = "fake_br193_ms_mrce.mdl",
                [17] = "fake_br193_ms_rpool.mdl",
                [18] = "fake_br193_ms_rsl.mdl",
                [19] = "fake_br193_sk_akiem.mdl",
                [20] = "fake_br193_sk_atlu.mdl",
                [21] = "fake_br193_sk_rpool.mdl",
                [22] = "fake_br248_atlu.mdl",
                [23] = "fake_br248_northrail.mdl",
                [24] = "fake_br248_northrail2.mdl",
				[25] = "fake_br248_northrail3.mdl",
                [26] = "fake_br248_northrail4.mdl",  
				} 
            local result = { }

            subconstruction.models = { }
            
            subconstruction.models[#subconstruction.models+1] = { 
                id = locomotiveModels[params.vectron and params.vectron or 1], 
                transf = constructionutil.rotateTransf(params, { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, offset_x, 0, 0, 1 })
            }

            subconstruction.terrainAlignmentLists = { 
                {
                    type = "EQUAL",
                    faces =  { }
                }
            }
                
            local result = { }
                
            result.snapPoint = {
                transportModes = { "TRAIN", "ELECTRIC_TRAIN" },
                allowSnapToBaseEdgeEnds = true,
                allowSnapToMesh = true,
            }

            result.subconstructions = {
                subconstruction
            }

            return result
        end
    }
end