audio_play_sound(snd_die, 1, false)

global.player2_lives -= 1

if(global.player2_lives > 0) {
	instance_create_layer(600, 350, "Instances", objSecondShip)
}