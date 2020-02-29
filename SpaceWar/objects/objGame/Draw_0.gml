switch(room) {
	case rmStart:
		draw_set_halign(fa_center)
		var c = c_red
		draw_text_transformed_color(room_width/2, 100, "SPACE WAR", 5, 5, 0, c, c, c, c, 1)
		
		draw_text(room_width/2, 200, 
@"P1 W: MOVE
A/D: TURN
SPACE: SHOOT
     
P2 UP: MOVE
LEFT/RIGHT: TURN
ENTER: SHOOT
 
>> PRESS SHIFT TO START << ")
		
		draw_set_halign(fa_left)
		break
		
	case rmWin :
		draw_set_halign(fa_center)
		var c = c_green
		var winner = ""
		if(global.player1_score >= 1500 || global.player2_lives == 0) {
			winner = "PLAYER 1"
		}
		
		else {
			winner = "PLAYER 2"
		}
		
		draw_text_transformed_color(room_width/2, room_height/2, winner + " WINS!", 5, 5, 0, c, c, c, c, 1)
		
		draw_text(room_width/2, 600, "PRESS SHIFT TO RESTART")
		
		draw_set_halign(fa_left)
		
		break
		
	case rmGameOver:
		draw_set_halign(fa_center)
		var c = c_red
		
		draw_text_transformed_color(room_width/2, room_height/2, "GAME OVER!", 5, 5, 0, c, c, c, c,1)
		draw_text(room_width/2, 600, "PRESS SHIFT TO RESTART")
		
		draw_set_halign(fa_left)
		break
	
	case rmSpace:
		draw_text(20,20, "P1 SCORE: " + string(global.player1_score))

		if(instance_exists(objMainShip)) {
			draw_text(20, 40, "ROUNDS: " + string(objMainShip.roundsInMagazineMain))
		}
		else {
			draw_text(20, 40, "ROUNDS: 0" )
		}

		draw_text(20, 60, "LIVES: " + string(global.player1_lives))



		draw_text(580,20, "P2 SCORE: " + string(global.player2_score))


		if(instance_exists(objSecondShip)) {
			draw_text(580, 40, "ROUNDS: " + string(objSecondShip.roundsInMagazineSecond))
		}
		else {
			draw_text(580, 40, "ROUNDS: 0")
		}

		draw_text(580, 60, "LIVES: " + string(global.player2_lives))
		break
}
