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
			
                [1] = "fake_br193_ac_sbb.mdl",
                [2] = "fake_br193_ac_sbb2.mdl",
                [3] = "fake_br193_ms_sbb.mdl",
                [4] = "fake_br193_ms_sbb2.mdl",
                [5] = "fake_br193_ms_sbb3.mdl",
                [6] = "fake_br193_ms_sbb4.mdl",
                [7] = "fake_br193_ms_sbb5.mdl",
                [8] = "fake_br193_ms_sbb6.mdl",
                [9] = "fake_br193_ms_sbb7.mdl",
                [10] = "fake_br193_ms_sbb8.mdl",
                [11] = "fake_br193_ms_sbb9.mdl",
                [12] = "fake_br193_ms_sbb10.mdl",
                [13] = "fake_br193_ms_sbb11.mdl",
                [14] = "fake_br193_ms_sbb12.mdl",
                [15] = "fake_br193_ms_sbb13.mdl",
                [16] = "fake_br193_ms_sbb14.mdl",
                [17] = "fake_br193_ms_sbb15.mdl",
                [18] = "fake_br193_ms_sbb16.mdl",
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