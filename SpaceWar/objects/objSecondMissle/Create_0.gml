

mask_index = sprBlank




//Setting an alarm for 8 seconds that will destroy the missle 
alarm[0] = 4 *room_speed

alarm[1] = .25 * room_speed

//Setting the inital velocity to be the current velocity of the ship
xVelocity = objSecondShip.xVelocity
yVelocity = objSecondShip.yVelocity

//Giving a inital delta of 5
deltaV = 5

//Making sure the missle is launched from the front of the ship
shipAngle = objSecondShip.image_angle

//Adding the inital delta to the velocity
xVelocity += deltaV*cos(pi/180*shipAngle)
yVelocity -= deltaV*sin(pi/180*shipAngle)

//Making the sprite face the same direction as the ship when it was launched
image_angle = objSecondShip.image_angle