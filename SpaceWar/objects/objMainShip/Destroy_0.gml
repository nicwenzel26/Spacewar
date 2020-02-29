global.player1_lives -= 1

if(global.player1_lives > 0) {
	instance_create_layer(200, 350, "Instances", objMainShip)
}