moretools.creative = moretools.config["hide_from_creative_inventory"]

minetest.register_node('moretools:admin_ore', {
	description = "Admin Ore",
	tiles = {"admin_ore.png"},
	wield_image = "admin_ore.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	groups = {not_in_creative_inventory = maptools.creative},
	legacy_wallmounted = true,
})
