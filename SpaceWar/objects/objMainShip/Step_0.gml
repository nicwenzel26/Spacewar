xDirection = cos(pi/180*image_angle)
yDirection = sin(pi/180*image_angle)



//Turn ship left
if(keyboard_check(ord("A"))) {
	image_angle += 5
}

//Turn ship right
if(keyboard_check(ord("D"))) {
	image_angle -= 5
}

if(roundsInMagazine < 5 && !reloading) {
	reloading = true
	alarm[1] = 4 * room_speed
}


//If the user presses space and canFire tag is true fire a missle
if(keyboard_check_pressed(vk_space) && canFire && roundsInMagazine > 0) {
	canFire = false
	roundsInMagazine -= 1
	instance_create_layer(x,y,"instances", objMainMissle)
	alarm[0] = 1 * room_speed
}


//Turning off the drive if not activly accel
image_index = 0



//Add add velocity to the space ship velocity constants
//Also adds drive plume to the sprite 
if(keyboard_check(ord("W"))) {
	xVelocity += deltaV*xDirection 
	yVelocity -= deltaV*yDirection 
	
	image_index = 1
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

