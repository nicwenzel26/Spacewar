xDirection = cos(pi/180*image_angle)
yDirection = sin(pi/180*image_angle)



//Turn ship left
if(keyboard_check(vk_left)) {
	image_angle += 5
}

//Turn ship right
if(keyboard_check(vk_right)) {
	image_angle -= 5
}

//If the mag is not full put rounds in 
if(roundsInMagazineSecond < 5 && !reloading) {
	reloading = true
	alarm[1] = 4 * room_speed
}

//Fire a missle if the user presses enter and canFire is true
if(keyboard_check_pressed(vk_enter) && canFire && roundsInMagazineSecond > 0) {
	canFire = false
	roundsInMagazineSecond -= 1
	audio_play_sound(snd_zap, 1, false)
	instance_create_layer(x,y,"instances", objSecondMissle)
	alarm[0] = 1 * room_speed
}


//Turning off the drive if not activly accel
image_index = 0

if(fuelLeft < 1000 && !accel) {
	fuelLeft += 1
}

//Add add velocity to the space ship velocity constants
//Also adds drive plume to the sprite 
if(keyboard_check(vk_up) && fuelLeft > 0) {
	accel = true
	xVelocity += deltaV*xDirection 
	yVelocity -= deltaV*yDirection
	fuelLeft -= 10
	
	if(fuelLeft < 0) fuelLeft = 0
	
	image_index = 1
}

if(keyboard_check_released(vk_up) ) {
	accel = false
}



distance = point_distance(x,y, objStar.x, objStar.y)
force = objStar.grav * objStar.mass / (distance * distance)
disX = (objStar.x - x) / distance
disY = (objStar.y -y) / distance

velXGrav = disX * force
velYGrav = disY * force

xVelocity += velXGrav
yVelocity += velYGrav


//Move ship based on current velocity in each direction
x += xVelocity
y += yVelocity

//Wraps around the screen
move_wrap(true,true,sprite_width / 2)
