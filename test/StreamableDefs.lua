-------------------------------------------------------------------------------
-- Notes: File contains definitions to use with level resources (eg. Tool_RequireResource)
--
-- Future Work Note : Original thought was that resourcedefs in this file could be auto-added to build,
--              and then auto-loaded from game code after loading the LevelObjects. (Without needing to be in the level/resources.lua)
--				That would allow resource req changes without re-exporting levels, but would need more code changed and tested so haven't tried it.
--
-- Author: Jonathan Kreuzer
-- Date C: 12-2-2018
-------------------------------------------------------------------------------

-- Dark Creature meshes
resourcedef "Mesh" "CharDarkCreatureAnim" { source = "CharDarkCreatureAnim.fbx", loadAsync = false, computeOcclusions = true, computeEdges = false } -- Dark Creature Head

-- Tutorial meshes
--resourcedef "Mesh" "HandyAnim" { source = "HandyAnim.fbx", loadAsync = false, registerCollision = false }
