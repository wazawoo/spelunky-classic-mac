if (status < STUNNED or other.type == "Machete")
{
    hp -= other.damage;
    scrCreateBlood(x+sprite_width/2, y+sprite_height/2, 1);
    countsAsKill = true;
    status = STUNNED;
    counter = stunTime;
    yVel = -3;
    if (other.x < (x+8)) xVel = 2;
    else xVel = -2;
    image_speed = 0.5;
    playSound(global.sndHit);
}
