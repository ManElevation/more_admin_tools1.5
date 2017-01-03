dofile(modpath .. "/adminpic.lua")
dofile(modpath .. "/admininv.lua")
dofile(modpath .. "/adminblock.lua")
dofile(modpath .. "/adminlump.lua")
dofile(modpath .. "/adminingot.lua")
dofile(modpath .. "/adminmine.lua")
dofile(modpath .. "/adminmute.lua")
dofile(modpath .. "/admingive.lua")
dofile(modpath .. "/adminkick.lua")
dofile(modpath .. "/adminban.lua")

if minetest.setting_getbool("log_mods") then
	minetest.log("action", S("More Admin Stuff loaded!"))
end
