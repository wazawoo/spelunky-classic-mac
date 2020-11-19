//if (not olmecDead and not doorOpen)
if (olmecDead and not doorOpen)
{
    doorOpen = true;
    obj = instance_place(640, 544, oEntrance);
    with obj { instance_destroy(); }
    instance_create(640, 544, oXEnd);
    if (not collision_point(640, 560, oSolid, 0, 0))
    {
        brick = instance_create(640, 560, oTemple);
        with brick { invincible = true; }
    }
    else
    {
        brick = instance_position(640, 560, oSolid);
        with brick { invincible = true; }
    }
    playSound(global.sndThump);
}
