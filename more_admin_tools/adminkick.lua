minetest.register_chatcommand("kickall", {
	params = "[reason]",
	description = "kick all player but the caller",
	privs = {kick=true},
	func = function(name, reason)
		for _,player in pairs(minetest.get_connected_players()) do
			local tokick = player:get_player_name()
			if tokick ~= name then
				execute_chatcommand(name, "/kick "..tokick.." "..reason)
			end
		end
		local log_message = name .. " kicks everyone"
		if reason
		and reason ~= "" then
			log_message = log_message.." with reason \"" .. reason .. "\""
		end
		minetest.log("action", log_message)
		return true, "Kicked everyone but you"
	end,
})