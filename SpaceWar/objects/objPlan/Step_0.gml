distance = point_distance(x,y, objStar.x, objStar.y)
force = objStar.grav * objStar.mass / (distance * distance)
disX = (objStar.x - x) / distance
disY = (objStar.y -y) / distance

velXGrav = disX * force
velYGrav = disY * force

xVelocity += velXGrav
yVelocity += velYGrav



x += xVelocity
y += yVelocity

