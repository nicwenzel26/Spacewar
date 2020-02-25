

mask_index = sprBlank




//Setting an alarm for 8 seconds that will destroy the missle 
alarm[0] = 4 *room_speed

alarm[1] = .5 * room_speed

//Setting the inital velocity to be the current velocity of the ship
xVelocity = objMainShip.xVelocity
yVelocity = objMainShip.yVelocity

//Giving a inital delta of 5
deltaV = 5

//Making sure the missle is launched from the front of the ship
shipAngle = objMainShip.image_angle

//Adding the inital delta to the velocity
xVelocity += deltaV*cos(pi/180*shipAngle)
yVelocity -= deltaV*sin(pi/180*shipAngle)

//Making the sprite face the same direction as the ship when it was launched
image_angle = objMainShip.image_angle
