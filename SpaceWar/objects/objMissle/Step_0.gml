distance = point_distance(x,y, objStar.x, objStar.y)
force = objStar.grav * objStar.mass / (distance * distance)
disX = (objStar.x - x) / distance
disY = (objStar.y -y) / distance

velXGrav = disX * force
velYGrav = disY * force

xVelocity += velXGrav
yVelocity += velYGrav



//Only has a inital deltaV in the creation
//Add the velocity to the position
x += xVelocity
y += yVelocity


//Make missles wrap around the screen
move_wrap(true,true, sprite_width/2) 