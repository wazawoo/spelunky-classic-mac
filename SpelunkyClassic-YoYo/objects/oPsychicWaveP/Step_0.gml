if (counter > 0)
{
    counter -= 1;
    x += xVel;
    if (xVel > 0) dir = 0;
    else dir = 180;
}
else
{
    if (instance_exists(oEnemy))
    {
        obj = instance_nearest(x, y, oEnemy);
        dir = point_direction(x, y, obj.x+8, obj.y+8);
    }
    x += 2 * cos(degtorad(dir));
    y += -2 * sin(degtorad(dir));
}
