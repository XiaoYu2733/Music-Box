-------------------------------------------------------------------------------
-- Notes:  Lists all the resources that are loaded for the Core modules. This
--         file should remain as short as possible to minimize load times.
--         These resources may be reordered to ensure that important resources
--         are available first.
--
-- Author: Mike Lester
-- Date C: 10-02-2016
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- SCRIPTS
-------------------------------------------------------------------------------

-- Hotloading
resource "Script" "DebugFunctions"	{ source = "Scripts/DebugFunctions.lua", stripDebug = false }

-- Intro level selection
resource "Script" "LevelSelect"		{ source = "Scripts/LevelSelect.lua", stripDebug = false, autoRun = true }
resource "Script" "LoadLevel"		{ source = "Scripts/LoadLevel.lua", stripDebug = false, autoRun = true }

-------------------------------------------------------------------------------
-- FONTS
-------------------------------------------------------------------------------

resource "Font" "Arial32"    { source = "Arial32.fnt", image = "Arial32" }
resource "Font" "Mono32"     { source = "Consolas32.fnt", image = "Consolas32" }

-------------------------------------------------------------------------------
-- SHADERS
-------------------------------------------------------------------------------

-- Post processing shaders
resource "Shader" "Resample"					{ vs = "Resample.vert", fs = "Resample.frag" }

-- this doesn't need a frag shader, but Vulkan Mali can't handle
resource "Shader" "VisibilityMeshDraw"		    { vs = "VisibilityMeshDraw.vert", fs="VisibilityMeshDraw.frag", defines="" }

-- FragSBO can only use writeable SSBO in fragment shader for Android Mali
resource "Shader" "VisibilityQuery"		   	    { vs = "VisibilityQuery.vert", defines="NO_OUTPUTS_SSBO" }
resource "Shader" "VisibilityQueryFragSSBO"		{ vs = "VisibilityQuery.vert", fs = "VisibilityQuery.frag", defines="FRAG_SSBO" }

resource "Shader" "VisibilityQueryMin"		    { vs = "VisibilityQuery.vert", defines="NO_OUTPUTS_SSBO SAMPLER_MINMAX" }
resource "Shader" "VisibilityQueryMinFragSSBO"  { vs = "VisibilityQuery.vert", fs = "VisibilityQuery.frag", defines="FRAG_SSBO SAMPLER_MINMAX" }

resource "Shader" "VisibilityDownMin"			{ vs = "QuadFS.vert", fs = "DepthDownsample.frag", defines="TO_HALF SAMPLER_MINMAX" }
resource "Shader" "VisibilityDown"				{ vs = "QuadFS.vert", fs = "DepthDownsample.frag", defines="TO_HALF" }

resource "Shader" "CloudDepth"					{ vs = "QuadFS.vert", fs = "DepthDownsample.frag", cs = "DepthDownsample.comp", defines="TO_QUARTER" }

resource "Shader" "CloudFluffySuperCoarseUndulate"{ vs = "QuadFS.vert", fs = "CloudFluffy.frag", cs = "CloudFluffy.comp", defines="CLOUD_JITTER SUPER_COARSE UNDULATE SINE_TEXTURE" }
resource "Shader" "CloudFluffyCoarseUndulate"	{ vs = "QuadFS.vert", fs = "CloudFluffy.frag", cs = "CloudFluffy.comp", defines="CLOUD_JITTER COARSE UNDULATE SINE_TEXTURE" }
resource "Shader" "CloudFluffyUndulate"			{ vs = "QuadFS.vert", fs = "CloudFluffy.frag", cs = "CloudFluffy.comp", defines="CLOUD_JITTER UNDULATE SINE_TEXTURE" }
resource "Shader" "CloudFluffySuperCoarse"		{ vs = "QuadFS.vert", fs = "CloudFluffy.frag", cs = "CloudFluffy.comp", defines="CLOUD_JITTER SUPER_COARSE" }
resource "Shader" "CloudFluffyCoarse"			{ vs = "QuadFS.vert", fs = "CloudFluffy.frag", cs = "CloudFluffy.comp", defines="CLOUD_JITTER COARSE" }
resource "Shader" "CloudFluffy"					{ vs = "QuadFS.vert", fs = "CloudFluffy.frag", cs = "CloudFluffy.comp", defines="CLOUD_JITTER" }
resource "Shader" "CloudComplexity"				{ vs = "QuadFS.vert", fs = "CloudFluffy.frag", cs = "CloudFluffy.comp", defines="CLOUD_JITTER COMPLEXITY" }
resource "Shader" "CloudBlur"					{ vs = "QuadFS.vert", fs = "CloudBlur.frag", defines="" }

resource "Shader" "BlendedDepth"				{ vs = "QuadFS.vert", fs = "BlendedDepth.frag", defines="" }
resource "Shader" "RainDrop"					{ group = "Blended", vs = "RainDrop.vert", fs = "RainDrop.frag", defines = "" }
resource "Shader" "FogVolume"					{ group = "FogVolume", vs = "FogVolume.vert", fs = "FogVolume.frag", toolExport = true, defines = "" }
resource "Shader" "FogUpsampleHalf"				{ vs = "QuadFS.vert", fs = "FogUpsample.frag", defines="HALF" }
resource "Shader" "FogUpsample"					{ vs = "QuadFS.vert", fs = "FogUpsample.frag", defines="" }
resource "Shader" "FogUpsampleArtbook"			{ vs = "QuadFS.vert", fs = "FogUpsample.frag", defines="ARTBOOK" }
resource "Shader" "FogUpsampleSaturationSpheres"{ vs = "QuadFS.vert", fs = "FogUpsample.frag", defines="SATURATION_SPHERES" }
resource "Shader" "FogUpsampleCausticSpheres"	{ vs = "QuadFS.vert", fs = "FogUpsample.frag", defines="CAUSTIC_SPHERES" }
--resource "Shader" "FogUpsampleAO"				{ vs = "QuadFS.vert", fs = "FogUpsample.frag", defines="AO" }
resource "Shader" "FogUpsampleCheapHalf"		{ vs = "QuadFS.vert", fs = "FogUpsample.frag", defines = "CHEAP_FOG HALF" }
resource "Shader" "FogUpsampleCheap"			{ vs = "QuadFS.vert", fs = "FogUpsample.frag", defines = "CHEAP_FOG" }
--resource "Shader" "FogUpsampleCheapAO"		{ vs = "QuadFS.vert", fs = "FogUpsample.frag", defines = "CHEAP_FOG AO" }
resource "Shader" "MotionGen"					{ vs = "QuadFS.vert", fs = "MotionGen.frag", defines = "" }
resource "Shader" "MotionGenDisabled"			{ vs = "QuadFS.vert", fs = "MotionGen.frag", defines = "DISABLED" }
resource "Shader" "MotionDilate"				{ vs = "QuadFS.vert", fs = "MotionDilate.frag" }
resource "Shader" "MotionDownsample"			{ vs = "QuadFS.vert", fs = "MotionDownsample.frag" }
resource "Shader" "MotionBlur"					{ vs = "QuadFS.vert", fs = "MotionBlur.frag" }
resource "Shader" "BloomDownOld"				{ vs = "Bloom.vert", fs = "Bloom.frag", defines = "DOWN OLD_BLOOM" }
resource "Shader" "BloomUpOld"					{ vs = "Bloom.vert", fs = "Bloom.frag", defines = "UP OLD_BLOOM" }
resource "Shader" "CompositeHDR"				{ vs = "QuadFS.vert", fs = "CompositeHDR.frag", defines = "" }
resource "Shader" "TemporalAa"					{ vs = "QuadFS.vert", fs = "TemporalAa.frag" }
resource "Shader" "DepthOfField"				{ vs = "QuadFS.vert", fs = "DepthOfField.frag" }
resource "Shader" "Fxaa"						{ vs = "QuadFS.vert", fs = "Fxaa.frag" }
resource "Shader" "FxaaDisabled"				{ vs = "QuadFS.vert", fs = "Fxaa.frag", defines = "DISABLE" }
resource "Shader" "PuddleDrop"					{ vs = "Sprite.vert", fs = "PuddleSim.frag", toolExport = false, defines = "INDENT" }
resource "Shader" "PuddleSim"					{ vs = "QuadFS.vert", fs = "PuddleSim.frag", toolExport = false }
resource "Shader" "WaterSim"					{ vs = "QuadFS.vert", fs = "WaterSim.frag", cs = "WaterSim.comp", toolExport = false }
resource "Shader" "WaterSimReset"				{ vs = "QuadFS.vert", fs = "WaterSim.frag", cs = "WaterSim.comp", toolExport = false, defines = "RESET" }
--resource "Shader" "AO"							{ vs = "QuadFS.vert", fs = "AO.frag", toolExport = false, defines = "AO" }

-- Tonemapping functionality (not for general purpose or use!)
resource "Shader" "Tonemap_p3_display"			{ vs = "QuadFS.vert", fs = "Tonemap.frag", defines = "BEND P3 sRGB HUD FRAMEBUFFER" }
resource "Shader" "Tonemap_p3_display_pq"		{ vs = "QuadFS.vert", fs = "Tonemap.frag", defines = "BEND P3 PQ HUD FRAMEBUFFER" }
resource "Shader" "Tonemap_p3_linear"			{ vs = "QuadFS.vert", fs = "Tonemap.frag", defines = "BEND P3 GAMMA_10 HUD FRAMEBUFFER" }
resource "Shader" "Tonemap_p3_dci"				{ vs = "QuadFS.vert", fs = "Tonemap.frag", defines = "BEND P3 GAMMA_26 HUD FRAMEBUFFER" }
resource "Shader" "Tonemap_rec2020_pq"			{ vs = "QuadFS.vert", fs = "Tonemap.frag", defines = "BEND REC_2020 PQ HUD FRAMEBUFFER" }
resource "Shader" "Tonemap_rec709_sRGB"			{ vs = "QuadFS.vert", fs = "Tonemap.frag", defines = "BEND REC_709 sRGB HUD DEBANDING FRAMEBUFFER" }

-- Added Hud on this
resource "Shader" "Tonemap_rec709"				{ vs = "QuadFS.vert", fs = "Tonemap.frag", defines = "BEND REC_709 GAMMA_10 HUD DEBANDING FRAMEBUFFER" }

-- These now all need to combine UI
resource "Shader" "Tonemap_movie"				{ vs = "QuadFS.vert", fs = "Tonemap.frag", defines = "BEND SCREENSHOT REC_709 sRGB HUD DEBANDING BGR" }
resource "Shader" "Tonemap_screenshot"			{ vs = "QuadFS.vert", fs = "Tonemap.frag", defines = "BEND SCREENSHOT REC_709 sRGB HUD DEBANDING" }

-- FragSBO can only use writeable SSBO in fragment shader for Android Mali
resource "Shader" "LumFeedback"					{ vs = "LumFeedback.vert", defines = "NO_OUTPUTS_SSBO" }
resource "Shader" "LumFeedbackFragSSBO"			{ vs = "LumFeedback.vert", fs = "LumFeedback.frag", defines = "FRAG_SSBO" }
resource "Shader" "DepthFeedback"				{ vs = "DepthFeedback.vert", defines = "NO_OUTPUTS_SSBO" }
resource "Shader" "DepthFeedbackFragSSBO"		{ vs = "DepthFeedback.vert", fs = "DepthFeedback.frag", defines = "FRAG_SSBO" }
resource "Shader" "VideoDownscaleFeedback"		{ vs = "VideoDownscaleFeedback.vert", defines = "NO_OUTPUTS_SSBO" }
resource "Shader" "VideoDownscaleFeedbackFragSSBO"	{ vs = "VideoDownscaleFeedback.vert", fs = "VideoDownscaleFeedback.frag", defines = "FRAG_SSBO" }

resource "Shader" "VideoProcess"				{ vs = "VideoProcess.vert", fs = "VideoProcess.frag", defines = "" }
resource "Shader" "VideoDownscale"				{ vs = "VideoProcess.vert", fs = "VideoProcess.frag", defines = "VIDEO_DOWNSCALE" }

-- Debug
resource "Shader" "DebugMesh"					{ vs = "DebugMesh.vert", fs = "DebugMesh.frag", defines = "FRAMEBUFFER" }
resource "Shader" "DebugMeshSolid"				{ vs = "DebugMeshSolid.vert", fs = "DebugMeshSolid.frag" }
resource "Shader" "DebugText"					{ vs = "DebugText.vert", fs = "DebugText.frag", defines = "FRAMEBUFFER" }
resource "Shader" "DebugLine"					{ vs = "DebugLine.vert", fs = "DebugLine.frag", defines = "FRAMEBUFFER" }
-- Hud lines are not drawing to framebuffer
resource "Shader" "DebugLineHud"				{ vs = "DebugLineHud.vert", fs = "DebugLineHud.frag", defines = "" }


resource "Shader" "SpiritProps"					{ group = "Opaque", vs = "Avatar.vert", fs = "Spirit.frag", toolExport = true, neverCastShadows = true, defines="SPIRIT ATTRIBUTES MUSICAL_INFLATE" }
resource "Shader" "SpiritMemoryMesh"			{ group = "Blended", vs = "Spirit.vert", fs = "Spirit.frag", toolExport = true, neverCastShadows = true, defines="MESH SPIRIT MEMORY_REVEAL ALPHA" }
resource "Shader" "SpiritMeshDepthPrepass"		{ group = "DepthPrepass", vs = "Spirit.vert", fs = "BlackDissolve.frag", toolExport = false, defines="BLACK" }
resource "Shader" "UnlitAlphaColor"				{ group = "Blended", vs = "DirectionalLighting.vert", fs = "DirectionalLighting.frag", toolExport = true, defines="ALPHA SELF_LIT COLOR_UNIFORM UVSCALE STAR_DEPTH" }
resource "Shader" "UnlitAlphaColorBackface"		{ group = "BlendedWithBackfaces", vs = "DirectionalLighting.vert", fs = "DirectionalLighting.frag", toolExport = true, defines="ALPHA SELF_LIT COLOR_UNIFORM UVSCALE" }
resource "Shader" "UnlitAlphaTest"				{ group = "Opaque", vs = "DirectionalLighting.vert", fs = "DirectionalLighting.frag", toolExport = true, defines="SELF_LIT ALPHA_TEST COLOR_UNIFORM" }

-- HUD
resource "Shader" "HudMask"						{ vs = "Fullscreen.vert", fs = "HudMask.frag", toolExport = false }
resource "Shader" "ColorSprite"					{ vs = "Sprite.vert", fs = "Sprite.frag", defines="COLOR_TEX EFFECT_SUPPORT" }
resource "Shader" "DebugDepth"					{ vs = "Sprite.vert", fs = "Sprite.frag", defines="DEPTH_TEX" }

resource "Shader" "ColorSpriteFramebuffer"		{ vs = "Sprite.vert", fs = "Sprite.frag", defines="COLOR_TEX FRAMEBUFFER EFFECT_SUPPORT" }
resource "Shader" "TguiBox"						{ vs = "TguiBox.vert", fs = "TguiBox.frag", defines="COLOR_TEX FRAMEBUFFER" }
resource "Shader" "TguiWorldMap"				{ vs = "TguiBox.vert", fs = "TguiBox.frag", defines="COLOR_TEX FRAMEBUFFER WORLDMAP_EFFECT" }
resource "Shader" "ColorSprite3d"				{ vs = "Sprite.vert", fs = "Sprite.frag", defines="COLOR_TEX VIEWPROJ EFFECT_SUPPORT" }
resource "Shader" "ColorSpriteHighRes3d"		{ vs = "Sprite.vert", fs = "Sprite.frag", defines="COLOR_TEX VIEWPROJ HIGHRES FRAMEBUFFER SCENE_TO_HUD_SCALE EFFECT_SUPPORT" }

resource "Shader" "ImGui"						{ vs = "ImGui.vert", fs = "ImGui.frag", defines="" }

resource "Shader" "RadicalSprite"				{ group = "Hud", vs = "Sprite.vert", fs = "RadicalSprite.frag", defines="FRAMEBUFFER RADIAL" }
resource "Shader" "GlowSprite"					{ group = "Hud", vs = "Sprite.vert", fs = "GlowSprite.frag", defines="FRAMEBUFFER GLOW_SPRITE" }
resource "Shader" "CircleMotionGraphics"		{ group = "Hud", vs = "Sprite.vert", fs = "CircleMotionGraphics.frag", defines="FRAMEBUFFER RADIAL" }

resource "Shader" "Sprite"						{ vs = "Sprite.vert", fs = "Sprite.frag" }
resource "Shader" "SpriteFramebuffer"			{ vs = "Sprite.vert", fs = "Sprite.frag", defines="FRAMEBUFFER" }

resource "Shader" "WorldSprite"					{ group = "Blended", vs = "WorldSprite.vert", fs = "WorldSprite.frag" }

-- Terrain materials
resource "Shader" "TerrainDepth"				{ group = "TerrainDepth", vs = "Terrain.vert", fs = "Terrain.frag", defines = "DEPTH", toolExport = false }
resource "Shader" "TerrainDepthTess"			{ group = "TerrainDepth", vs = "Terrain.vert", fs = "Terrain.frag", tc = "Terrain.tesc", te = "Terrain.tese", defines = "DEPTH TESSELLATION", toolExport = false }
resource "Shader" "CloudShMesh"					{ group = "Opaque", vs = "Terrain.vert", fs = "Terrain.frag", defines="CLOUD UNDULATE MESH" }
resource "Shader" "CloudCard"					{ group = "Cloud", vs = "CloudCard.vert", fs = "CloudCard.frag", neverCastShadows = true }

resource "Shader" "GrassSh"						{ group = "TerrainMats", vs = "Terrain.vert", fs = "Terrain.frag", defines = "GRASS OVERLAY", toolExport = false }
resource "Shader" "GrassShTess"					{ group = "TerrainMats", vs = "Terrain.vert", fs = "Terrain.frag", tc = "Terrain.tesc", te = "Terrain.tese", defines = "GRASS OVERLAY TESSELLATION", toolExport = false }
resource "Shader" "GrassShMesh"					{ group = "Opaque", vs = "Terrain.vert", fs = "Terrain.frag", defines = "GRASS MESH", toolExport = false }
resource "Shader" "GrassShMeshDecal"			{ group = "ObjectDecal", vs = "Terrain.vert", fs = "Terrain.frag", defines = "GRASS MESH OVERLAY DECAL", toolExport = false }
resource "Shader" "GrassShSkirt"				{ group = "ObjectSkirt", vs = "Terrain.vert", fs = "Terrain.frag", defines = "GRASS SKIRT OVERLAY DECAL", toolExport = false }

resource "Shader" "RockFaceSh"					{ group = "TerrainMats", vs = "Terrain.vert", fs = "Terrain.frag", defines = "ROCKFACE OVERLAY", toolExport = false }
resource "Shader" "RockFaceShTess"				{ group = "TerrainMats", vs = "Terrain.vert", fs = "Terrain.frag", tc = "Terrain.tesc", te = "Terrain.tese", defines = "ROCKFACE OVERLAY TESSELLATION", toolExport = false }
resource "Shader" "RockFaceShMesh"				{ group = "Opaque", vs = "Terrain.vert", fs = "Terrain.frag", defines = "ROCKFACE MESH", toolExport = false }
resource "Shader" "RockFaceShMeshDecal"			{ group = "ObjectDecal", vs = "Terrain.vert", fs = "Terrain.frag", defines = "ROCKFACE MESH OVERLAY DECAL", toolExport = false }
resource "Shader" "RockFaceShSkirt"				{ group = "ObjectSkirt", vs = "Terrain.vert", fs = "Terrain.frag", defines = "ROCKFACE SKIRT OVERLAY DECAL", toolExport = false }

resource "Shader" "RockFaceRainSh"				{ group = "TerrainMats", vs = "Terrain.vert", fs = "Terrain.frag", defines = "ROCKFACE RAIN OVERLAY", toolExport = false }
resource "Shader" "RockFaceRainShTess"			{ group = "TerrainMats", vs = "Terrain.vert", fs = "Terrain.frag", tc = "Terrain.tesc", te = "Terrain.tese", defines = "ROCKFACE RAIN OVERLAY TESSELLATION", toolExport = false }
resource "Shader" "RockFaceRainShMesh"			{ group = "Opaque", vs = "Terrain.vert", fs = "Terrain.frag", defines = "ROCKFACE RAIN MESH", toolExport = false }
resource "Shader" "RockFaceRainShMeshDecal"		{ group = "ObjectDecal", vs = "Terrain.vert", fs = "Terrain.frag", defines = "ROCKFACE RAIN MESH OVERLAY DECAL", toolExport = false }
resource "Shader" "RockFaceRainShSkirt"			{ group = "ObjectSkirt", vs = "Terrain.vert", fs = "Terrain.frag", defines = "ROCKFACE RAIN SKIRT OVERLAY DECAL", toolExport = false }

resource "Shader" "SandSh"						{ group = "TerrainMats", vs = "Terrain.vert", fs = "Terrain.frag", defines = "SAND OVERLAY", toolExport = false }
resource "Shader" "SandShTess"					{ group = "TerrainMats", vs = "Terrain.vert", fs = "Terrain.frag", tc = "Terrain.tesc", te = "Terrain.tese", defines = "SAND OVERLAY TESSELLATION", toolExport = false }
resource "Shader" "SandShMesh"					{ group = "Opaque", vs = "Terrain.vert", fs = "Terrain.frag", defines = "SAND MESH", toolExport = false }
resource "Shader" "SandShMeshDecal"				{ group = "ObjectDecal", vs = "Terrain.vert", fs = "Terrain.frag", defines = "SAND MESH OVERLAY DECAL", toolExport = false }
resource "Shader" "SandShSkirt"					{ group = "ObjectSkirt", vs = "Terrain.vert", fs = "Terrain.frag", defines = "SAND SKIRT OVERLAY DECAL", toolExport = false }

resource "Shader" "SnowSh"						{ group = "TerrainMats", vs = "Terrain.vert", fs = "Terrain.frag", defines = "SNOW OVERLAY", toolExport = false }
resource "Shader" "SnowShTess"					{ group = "TerrainMats", vs = "Terrain.vert", fs = "Terrain.frag", tc = "Terrain.tesc", te = "Terrain.tese", defines = "SNOW OVERLAY TESSELLATION", toolExport = false }
resource "Shader" "SnowShMesh"					{ group = "Opaque", vs = "Terrain.vert", fs = "Terrain.frag", defines = "SNOW MESH", toolExport = false }
resource "Shader" "SnowShMeshDecal"				{ group = "ObjectDecal", vs = "Terrain.vert", fs = "Terrain.frag", defines = "SNOW MESH OVERLAY DECAL", toolExport = false }
resource "Shader" "SnowShSkirt"					{ group = "ObjectSkirt", vs = "Terrain.vert", fs = "Terrain.frag", defines = "SNOW SKIRT OVERLAY DECAL", toolExport = false }

resource "Shader" "SandRainSh"					{ group = "TerrainMats", vs = "Terrain.vert", fs = "Terrain.frag", defines = "SAND RAIN OVERLAY", toolExport = false }
resource "Shader" "SandRainShTess"				{ group = "TerrainMats", vs = "Terrain.vert", fs = "Terrain.frag", tc = "Terrain.tesc", te = "Terrain.tese", defines = "SAND RAIN OVERLAY TESSELLATION", toolExport = false }
resource "Shader" "SandRainShMesh"				{ group = "Opaque", vs = "Terrain.vert", fs = "Terrain.frag", defines = "SAND RAIN MESH", toolExport = false }
resource "Shader" "SandRainShMeshDecal"			{ group = "ObjectDecal", vs = "Terrain.vert", fs = "Terrain.frag", defines = "SAND RAIN MESH OVERLAY DECAL", toolExport = false }
resource "Shader" "SandRainShSkirt"				{ group = "ObjectSkirt", vs = "Terrain.vert", fs = "Terrain.frag", defines = "SAND RAIN SKIRT OVERLAY DECAL", toolExport = false }

-- Flower.frag
resource "Shader" "Flower"						{ group = "Flowers", vs = "Flower.vert", fs = "Flower.frag", toolExport = false }
resource "Shader" "FlowerShadow"				{ group = "FlowerShadows", vs = "Flower.vert", fs = "Flower.frag", defines = "SHADOW", toolExport = false }
resource "Shader" "GrassBladeNew"				{ group = "OpaqueTwoFace", vs = "Flower.vert", fs = "Flower.frag", defines = "GRASS READ_SSBO", toolExport = false }
resource "Shader" "GrassBlade"					{ group = "OpaqueTwoFace", vs = "Flower.vert", fs = "Flower.frag", defines = "GRASS", toolExport = false }

-- Mesh.frag
resource "Shader" "Mesh"						{ group = "Opaque", vs = "Mesh.vert", fs = "Mesh.frag", toolExport = true, defines="" }
resource "Shader" "MeshSh"						{ group = "Opaque", vs = "Mesh.vert", fs = "Mesh.frag", toolExport = true, defines="BAKED" }
resource "Shader" "MeshSl"						{ group = "Opaque", vs = "Mesh.vert", fs = "Mesh.frag", toolExport = true, defines="SELF_LIT COLOR_UNIFORM" }
resource "Shader" "MeshSlNoShadows"             { group = "Opaque", vs = "Mesh.vert", fs = "Mesh.frag", toolExport = true, neverCastShadows = true, defines="SELF_LIT COLOR_UNIFORM NO_SHADOWS ETHEREAL" }
resource "Shader" "MeshSlNoShadowsWobble"       { group = "Opaque", vs = "Mesh.vert", fs = "Mesh.frag", toolExport = true, neverCastShadows = true, defines="SELF_LIT COLOR_UNIFORM NO_SHADOWS ETHEREAL WOBBLE" }
resource "Shader" "MeshSlNoShadowsBubble"       { group = "Opaque", vs = "Mesh.vert", fs = "Mesh.frag", toolExport = true, neverCastShadows = true, defines="SELF_LIT COLOR_UNIFORM NO_SHADOWS WOBBLE BUBBLE" }
resource "Shader" "MeshSlNoShadowsDye"      	{ group = "Opaque", vs = "Mesh.vert", fs = "Mesh.frag", toolExport = true, neverCastShadows = true, defines="SELF_LIT COLOR_UNIFORM NO_SHADOWS ETHEREAL COLOR_VARIANT" }
resource "Shader" "MeshSlNoShadowsDyeSystem"	{ group = "Opaque", vs = "Mesh.vert", fs = "Mesh.frag", toolExport = true, neverCastShadows = true, defines="SELF_LIT COLOR_UNIFORM NO_SHADOWS ETHEREAL DYEABLE" }
resource "Shader" "MeshChamSh"					{ group = "Opaque", vs = "Mesh.vert", fs = "Mesh.frag", toolExport = true, defines = "CHAM SELF_LIT COLOR_UNIFORM BAKED" }
resource "Shader" "MeshShSdf"					{ group = "Opaque", vs = "Mesh.vert", fs = "Mesh.frag", toolExport = true, defines="BAKED SDF" }
resource "Shader" "MeshShAlphaSdf"				{ group = "Decal", vs = "Mesh.vert", fs = "Mesh.frag", toolExport = true, defines="BAKED DECAL SDF" }
resource "Shader" "MeshMotion"					{ group = "Motion", vs = "MeshMotion.vert", fs = "MotionGen.frag", defines="OLD_POS MESH" }
resource "Shader" "AvatarMeshMotion"			{ group = "Motion", vs = "MeshMotion.vert", fs = "MotionGen.frag", defines="AVATAR_WIND OLD_POS MESH" }
resource "Shader" "StaticMeshMotion"			{ group = "Motion", vs = "MeshMotion.vert", fs = "MotionGen.frag", defines="MESH" }
resource "Shader" "Creature"					{ group = "Opaque", vs = "Mesh.vert", fs = "Mesh.frag", toolExport = true, defines="SH_UNIFORM CREATURE" }

resource "Shader" "Cham"						{ group = "Opaque", vs = "Mesh.vert", fs = "Mesh.frag", toolExport = true, defines = "DAZZLECHAM SELF_LIT CHAMTIME" }
resource "Shader" "ChamAlpha"					{ group = "Blended", vs = "Mesh.vert", fs = "Mesh.frag", toolExport = true, defines = "DAZZLECHAM SELF_LIT CHAMTIME ALPHA VERTEX_ALPHA_SCALE" }
resource "Shader" "ChamAlphaSdf"				{ group = "Opaque", vs = "Mesh.vert", fs = "Mesh.frag", toolExport = true, defines = "DAZZLECHAM SELF_LIT CHAMTIME SDF" }

-- Ocean.frag
resource "Shader" "Ocean"						{ group = "Ocean", vs = "Ocean.vert", fs = "Ocean.frag", toolExport = false, defines="", neverCastShadows = true }
resource "Shader" "OceanTess"					{ group = "Ocean", vs = "Ocean.vert", fs = "Ocean.frag", tc = "Ocean.tesc", te = "Ocean.tese", toolExport = false, defines="TESSELLATION", neverCastShadows = true }
resource "Shader" "OceanMesh"					{ group = "OceanModel", vs = "Ocean.vert", fs = "Ocean.frag", toolExport = true, neverCastShadows = true, defines="MODEL" }

-- Effects
resource "Shader" "CandleAura"					{ group = "BlendedBackground", vs = "CandleAura.vert", fs = "CandleAura.frag", toolExport = false, defines="CANDLE" }
resource "Shader" "HeartAura"					{ group = "BlendedBackground", vs = "CandleAura.vert", fs = "CandleAura.frag", toolExport = false, defines="HEART" }
resource "Shader" "StarAura"					{ group = "BlendedBackground", vs = "CandleAura.vert", fs = "CandleAura.frag", toolExport = false, defines="STAR" }
resource "Shader" "Flame"						{ group = "BlendedBackground", vs = "Flame.vert", fs = "Flame.frag", toolExport = false, defines="" }
resource "Shader" "DancingFlame"				{ group = "Flames", vs = "DancingFlame.vert", fs = "DancingFlame.frag", toolExport = false, defines="" }
resource "Shader" "Beacon"						{ group = "Blended", vs = "Beacon.vert", fs = "Beacon.frag", toolExport = false, defines="VIEWPROJ" }
resource "Shader" "Candle"						{ group = "Opaque", vs = "Candle.vert", fs = "Candle.frag", toolExport = false, defines="" }
resource "Shader" "Sun"							{ group = "Opaque", vs = "Sun.vert", fs = "Sun.frag", toolExport = false, defines="" }

-- DirectionalLighting.frag
resource "Shader" "LitAlpha"					{ group = "Blended", vs = "DirectionalLighting.vert", fs = "DirectionalLighting.frag", toolExport = true, defines="SELF_LIT LIT ALPHA" }
resource "Shader" "LitAlphaTest"				{ group = "Opaque", vs = "DirectionalLighting.vert", fs = "DirectionalLighting.frag", toolExport = true, defines="SELF_LIT LIT ALPHA_TEST COLOR_UNIFORM" }
resource "Shader" "UnlitAlpha"					{ group = "Blended", vs = "DirectionalLighting.vert", fs = "DirectionalLighting.frag", toolExport = true, defines="ALPHA SELF_LIT" }
resource "Shader" "LitAlphaColor"				{ group = "Blended", vs = "DirectionalLighting.vert", fs = "DirectionalLighting.frag", toolExport = true, defines="SELF_LIT LIT ALPHA COLOR_UNIFORM" }
resource "Shader" "LitAlphaColorBackground"		{ group = "BlendedBackground", vs = "DirectionalLighting.vert", fs = "DirectionalLighting.frag", toolExport = true, defines="SELF_LIT LIT ALPHA COLOR_UNIFORM" }
resource "Shader" "LitAlphaColorPano"			{ group = "Pano", vs = "DirectionalLighting.vert", fs = "DirectionalLighting.frag", toolExport = true, defines="SELF_LIT LIT ALPHA COLOR_UNIFORM PANO" }
resource "Shader" "DirectionalLightingNoUv"		{ group = "Opaque", vs = "DirectionalLighting.vert", fs = "DirectionalLighting.frag", toolExport = true, defines="COLOR_UNIFORM SELF_LIT LIT NO_UV" }
resource "Shader" "Unlit"						{ group = "Opaque", vs = "DirectionalLighting.vert", fs = "DirectionalLighting.frag", toolExport = true, defines="" }
resource "Shader" "UnlitAlphaFading"			{ group = "Blended", vs = "DirectionalLighting.vert", fs = "DirectionalLighting.frag", toolExport = true, defines="ALPHA SELF_LIT FADING" }

-- Text rendering
resource "Shader" "SlugFramebuffer"				{ vs = "Slug.vert", fs = "Slug.frag", toolExport = false, defines="FRAMEBUFFER SCREENSPACE SCREEN_CLIP" }

-- Utils
-- This is used by PS4 build only right now
if PLATFORM == "ps4" then
	resource "Shader" "UtilsClearBuffer"			{ cs = "UtilsClearBuffer.comp", toolExport = false, defines="" }
	resource "Shader" "UtilsCopyBufferToTexture2d"			{ cs = "UtilsCopyBufferToTexture2d.comp", toolExport = false, defines="" }
	resource "Shader" "UtilsCopyBufferToTexture3d"			{ cs = "UtilsCopyBufferToTexture3d.comp", toolExport = false, defines="" }
end

-------------------------------------------------------------------------------
-- MESHES
-------------------------------------------------------------------------------

resource "Mesh" "Plane"				{ source = "Plane.fbx", registerCollision = true }
resource "Mesh" "Plane10x10"		{ source = "Plane10x10.fbx", registerCollision = true }

resource "Mesh" "LightShaft_02"		{ source = "LightShaft_02.fbx", loadAsync = false, registerCollision = false } -- Blaze Light Shaft

-- Candles
resource "Mesh" "CandleDefault"		{ source = "CandleDefault.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "Candles_02"		{ source = "Candles_02.fbx", loadAsync = false, registerCollision = true }
resource "Mesh" "CandleAncestor"	{ source = "CandleAncestor.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "CandlePlayer"		{ source = "CandlePlayer.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "CandleHeart"		{ source = "CandleHeart.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "CandleTreasure_01"	{ source = "CandleTreasure_01.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "CandleTreasure_02"	{ source = "CandleTreasure_02.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }

-- Season Candles
resource "Mesh" "SeasonCandle"		{ source = "AP07CandleA.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "SeasonCandle02"	{ source = "AP02CandleA.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "SeasonCandle03"	{ source = "AP03CandleA.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "SeasonCandle04"	{ source = "AP04CandleA.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "SeasonCandle05"	{ source = "AP01CandleA.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "SeasonCandle06"	{ source = "AP06CandleA.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "SeasonCandle07"	{ source = "AP07CandleA.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "SeasonCandle08"    { source = "AP08CandleA.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "SeasonCandle09"    { source = "AP09CandleA.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "SeasonCandle10"    { source = "AP10CandleA.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "SeasonCandle11"    { source = "AP11CandleA.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "SeasonCandle12"    { source = "AP12CandleA.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "SeasonCandle13"    { source = "AP13CandleA.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "SeasonCandle14"    { source = "AP14CandleA.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "SeasonCandle15"    { source = "AP15CandleA.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "SeasonCandle16"    { source = "AP16CandleA.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "SeasonCandle17"    { source = "AP17CandleA.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "SeasonCandle18"    { source = "AP18CandleA.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "SeasonCandle19"    { source = "AP19CandleA.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "SeasonCandle20"    { source = "AP20CandleA.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "SeasonCandle21"    { source = "AP21CandleA.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "SeasonCandle22"    { source = "AP22CandleA.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "SeasonCandle23"    { source = "AP23CandleA.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "SeasonCandle24"    { source = "AP24CandleA.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "SeasonCandle25"    { source = "AP25CandleA.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }
resource "Mesh" "SeasonCandle26"    { source = "AP26CandleA.fbx", loadAsync = false, registerCollision = false, computeOcclusions = true }

-------------------------------------------------------------------------------
-- ANIMATION
-------------------------------------------------------------------------------

resource "AnimationPack" "CharSkyNPC_Skeleton_Merchant"	{}
resource "AnimationPack" "CharKidAnimEmote_C"			{}
resource "AnimationPack" "CharKidAnimGroundNav"			{}
resource "AnimationPack" "CharKidAnimGroundState"		{}
resource "AnimationPack" "CharKidAnimPlayerAct"			{}
resource "AnimationPack" "CharKidAnimAP21"              {} -- AP21 CharKidAnim

-------------------------------------------------------------------------------
-- IMAGES
-------------------------------------------------------------------------------

resourceref "Image" "Arial32"
resourceref "Image" "Consolas32"

-- Intro resources
resourceref "Image" "UISpot"
resourceref "Image" "Noise3Ch"
resourceref "Image" "Noise3ChSoft"
resourceref "Image" "CharSkyRayBasicTex"
resourceref "Image" "RedL2"
resourceref "Image" "RedD3"
resourceref "Image" "Gray"
resourceref "Image" "YellowD2"
resourceref "Image" "StoneBaseSh"
resourceref "Image" "AncestorBlue"
resourceref "Image" "BlueL2"
resourceref "Image" "GrayD1"
resourceref "Image" "GrayL2"
resourceref "Image" "Orange"
resourceref "Image" "BasicGeoAtlas1"
resourceref "Image" "Black"
resourceref "Image" "White"
resourceref "Image" "Red"
resourceref "Image" "OrangeL1"
resourceref "Image" "OrangeL2"
resourceref "Image" "Rainbow"

resourceref "Image" "AttribSimpleGlow"
resourceref "Image" "AvatarMaskBasicChamTex"
resourceref "Image" "AvatarMaskBasicTex" -- replaced with CharRampCool
resourceref "Image" "CharRampS1"
resourceref "Image" "CharSkyRayBasicTexSh"
resourceref "Image" "Clear"
resourceref "Image" "CloudFarTex"
resourceref "Image" "DawnIntroGate"
resourceref "Image" "DawnIntroGateSh"
resourceref "Image" "StoneBase"
resourceref "Image" "StoneBaseMotif"
resourceref "Image" "StoneBlueL1"
resourceref "Image" "StoneBlueD3"
resourceref "Image" "StoneGrunge2"
resourceref "Image" "StoneRamp"
resourceref "Image" "StoneRamp2"

-- Compositor textures
resourceref "Image" "NoiseBlue3Ch"
resourceref "Image" "HeatTex"

resourceref "Image" "UpNormal"

resourceref "Image" "CliffSh"
resourceref "Image" "SoilSh"
resourceref "Image" "RockHeightCliffSh"
resourceref "Image" "WallSh"
resourceref "Image" "GoldSh"
resourceref "Image" "TileCeilingSh"
resourceref "Image" "GlacierSh"
resourceref "Image" "TileFloorSh"
resourceref "Image" "CliffWetSh"
resourceref "Image" "BrickSh"
resourceref "Image" "WoodSh"
resourceref "Image" "WoodPlankSh"

resourceref "Image" "GrassNorTex0"
resourceref "Image" "GrassNorTex1"
resourceref "Image" "GrassMask"

resourceref "Image" "OceanNormal"
resourceref "Image" "Caustics"
resourceref "Image" "Caustics2"
resourceref "Image" "Caustics2Normal"
resourceref "Image" "SandMask"

resourceref "Image" "FxFlameRayTex"
resourceref "Image" "FxRainbowTex1"
resourceref "Image" "WingAuraRainbow"

-- Video Texture
resourceref "Image" "Video0"
resourceref "Image" "Video1"

-- UI
resourceref "Image" "UILogo"
resourceref "Image" "UIRingBold"
resourceref "Image" "UISphere"
resourceref "Image" "TGCLogoFlat"

-- Particle
resourceref "Image" "ParticleAtlas"
resource "ImageRegion" "rubbleR"		{ image = "ParticleAtlas", uv = { 0,   0, 1/8, 1/8 } }
resource "ImageRegion" "rubble2R"		{ image = "ParticleAtlas", uv = { 1/8, 0, 2/8, 1/8 } }
resource "ImageRegion" "thunderR"		{ image = "ParticleAtlas", uv = { 2/8, 0, 3/8, 1/8 } }
resource "ImageRegion" "lightningR"		{ image = "ParticleAtlas", uv = { 3/8, 0, 4/8, 1/8 } }

resource "ImageRegion" "squareR"		{ image = "ParticleAtlas", uv = { 0,   1/8, 1/8, 2/8 } }
resource "ImageRegion" "dirtR"			{ image = "ParticleAtlas", uv = { 1/8, 1/8, 2/8, 2/8 } }
resource "ImageRegion" "auraR"			{ image = "ParticleAtlas", uv = { 2/8, 1/8, 3/8, 2/8 } }
resource "ImageRegion" "petalR"			{ image = "ParticleAtlas", uv = { 3/8, 1/8, 4/8, 2/8 } }

resource "ImageRegion" "crossR"			{ image = "ParticleAtlas", uv = { 0,   2/8, 1/8, 3/8 } }
resource "ImageRegion" "doodleR"		{ image = "ParticleAtlas", uv = { 1/8, 2/8, 2/8, 3/8 } }
resource "ImageRegion" "clothR"			{ image = "ParticleAtlas", uv = { 2/8, 2/8, 3/8, 3/8 } }
resource "ImageRegion" "wispyR"			{ image = "ParticleAtlas", uv = { 3/8, 2/8, 4/8, 3/8 } }

resource "ImageRegion" "rippleR"		{ image = "ParticleAtlas", uv = { 0, 3/8, 1/8, 4/8 } }
resource "ImageRegion" "circleR"		{ image = "ParticleAtlas", uv = { 0.125, 3/8, 0.25, 0.5 } }
resource "ImageRegion" "starR"			{ image = "ParticleAtlas", uv = { 0.25, 3/8, 3/8, 0.5 } }
resource "ImageRegion" "dotR"			{ image = "ParticleAtlas", uv = { 3/8, 3/8, 0.5, 0.5 } }

resource "ImageRegion" "snowR"			{ image = "ParticleAtlas", uv = { 0.5, 0, 0.625, 0.125 } }
resource "ImageRegion" "dustR"			{ image = "ParticleAtlas", uv = { 0.625, 0, 0.75, 0.125 } }

resource "ImageRegion" "sandR"			{ image = "ParticleAtlas", uv = { 0.5, 0.125, 0.625, 0.25 } }
resource "ImageRegion" "glowR"			{ image = "ParticleAtlas", uv = { 0.625, 0.125, 0.75, 0.25 } }

resource "ImageRegion" "glitterR"		{ image = "ParticleAtlas", uv = { 0.75, 0, 1, 0.25 } }
resource "ImageRegion" "sandstormR"		{ image = "ParticleAtlas", uv = { 0.5, 0.25, 0.75, 0.5 } }
resource "ImageRegion" "ringR"			{ image = "ParticleAtlas", uv = { .75, .25, 1, .5 } }

resource "ImageRegion" "poofR"			{ image = "ParticleAtlas", uv = { 0, .5, .25, .75 } }
resource "ImageRegion" "boonR"			{ image = "ParticleAtlas", uv = { .25, .5, .5, .75 } }

resource "ImageRegion" "exclamationR"	{ image = "ParticleAtlas", uv = { 0/16, 12/16, 1/16, 13/16 } }
resource "ImageRegion" "questionR"		{ image = "ParticleAtlas", uv = { 1/16, 12/16, 2/16, 13/16 } }
resource "ImageRegion" "heartR"			{ image = "ParticleAtlas", uv = { 0/16, 13/16, 1/16, 14/16 } }
resource "ImageRegion" "sleepR"			{ image = "ParticleAtlas", uv = { 1/16, 13/16, 2/16, 14/16 } }
resource "ImageRegion" "lightR"			{ image = "ParticleAtlas", uv = { 1/8, 6/8, 2/8, 7/8 } }

resource "ImageRegion" "hahahaR"        { image = "ParticleAtlas", uv = { 0/16, 14/16, 1/16, 15/16 } }
resource "ImageRegion" "angryveinR"     { image = "ParticleAtlas", uv = { 1/16, 14/16, 2/16, 15/16 } }
resource "ImageRegion" "nothanksR"      { image = "ParticleAtlas", uv = { 0/16, 15/16, 1/16, 16/16 } }
resource "ImageRegion" "petal2R"        { image = "ParticleAtlas", uv = { 1/16, 15/16, 2/16, 16/16 } }
resource "ImageRegion" "bubbleR"        { image = "ParticleAtlas", uv = { 2/16, 14/16, 3/16, 15/16 } }
resource "ImageRegion" "CresentR"       { image = "ParticleAtlas", uv = { 2/16, 15/16, 3/16, 1 } }
resource "ImageRegion" "coinR"      	{ image = "ParticleAtlas", uv = { 3/16, 14/16, 4/16, 15/16 } }
resource "ImageRegion" "featherR"      	{ image = "ParticleAtlas", uv = { 3/16, 15/16, 4/16, 16/16 } }

resource "ImageRegion" "rayR"			{ image = "ParticleAtlas", uv = { .25, .75, .5, 1 } }
resource "ImageRegion" "CloudAnimR"		{ image = "ParticleAtlas", uv = { .5, .5, 1, 1 } }
