if(keyboard_check_pressed(vk_shift)) {
	switch(room) {
		case rmStart:
			room_goto(rmSpace)
			break
		case rmWin:
			game_restart()
			break
		case rmGameOver:
			game_restart()
			break
			
	}
}

if(room == rmSpace) {
	if(global.player1_score >= 1500|| global.player2_score >= 1500) {
		room_goto(rmWin)
		audio_play_sound(snd_win, 1, false)
	}

	if(global.player1_lives <= 0 && global.player2_lives <= 0) {
		room_goto(rmGameOver)
		audio_play_sound(snd_lose, 1, false)
	}
}