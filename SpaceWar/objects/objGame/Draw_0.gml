

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