function isCollisionPlatformBottom(argument0) {
	/*
	An object can only use this script after calling "setCollisionBounds."
	0: Number of pixels below the collision rectangle to check for a collision
	with a platform object.
	*/
	calculateCollisionBounds()
	if collision_line(round(lb),round(bb+argument0-1),round(rb-1),round(bb+argument0-1),oPlatform,1,1)>0
	{
	  return 1
	}
	return 0


}
