if string.find(game_state_machine:current_state_name(), "game") then
	-- Force win
	local num_winners = managers.network:game():amount_of_alive_players()
	managers.network:session():send_to_peers( "mission_ended", true, num_winners )
	game_state_machine:change_state_by_name( "victoryscreen", { num_winners = num_winners, personal_win = true } )
end