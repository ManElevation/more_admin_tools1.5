minetest.register_chatcommand("giveall", {
	params = "<privilege>|all",
	description = "Give item to all players online",
	func = function(name, param)
		if param == "" then
			return false, "Invalid parameters (see /help giveall)"
		end
		for _,player in pairs(minetest.get_connected_players()) do
			local playername = player:get_player_name()
			execute_chatcommand(name, "/give "..playername.." "..param)
		end

		minetest.log("action", name..' given everyone ('..param..')')
		return true, "You given everyone: "..param
	end,
})