------------------------------------------------------------------------------------------
-- SystemSound Resources -----------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- Notes: Lists all system sound definition/ system sound resources to be loaded at program startup and
--			remain loaded until program termination.
--
------------------------------------------------------------------------------------------



if PLATFORM ~= "nx" and PLATFORM ~= "macosx" and PLATFORM ~= "win" then
	resource "SystemSound" "tgc_logo" { source = "tgc_logo.wav" }
end

