minetest.register_chatcommand("banall", {
	params = "<privilege>|all",
	description = "Ban all players online",
	func = function(name, param)
		if param == "" then
			return false, "Invalid parameters (see /help banall)"
		end
		for _,player in pairs(minetest.get_connected_players()) do
			local playername = player:get_player_name()
			execute_chatcommand(name, "/ban "..playername.." "..param)
		end

		minetest.log("action", name..' banned everyone ('..param..')')
		return true, "You banned everyone: "..param
	end,
})
minetest.register_chatcommand("unbanall", {
	params = "<privilege>|all",
	description = "Unban all players online",
	func = function(name, param)
		if param == "" then
			return false, "Invalid parameters (see /help unbanall)"
		end
		for _,player in pairs(minetest.get_connected_players()) do
			local playername = player:get_player_name()
			execute_chatcommand(name, "/ban "..playername.." "..param)
		end

		minetest.log("action", name..' unbanned everyone ('..param..')')
		return true, "You unbanned everyone: "..param
	end,
})