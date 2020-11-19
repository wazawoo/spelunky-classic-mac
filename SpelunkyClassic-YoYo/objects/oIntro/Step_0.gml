if (keyboard_check_pressed(vk_enter) or
    keyboard_check_pressed(vk_escape) or
    checkAttackPressed() or
    checkStartPressed())
{
    if (not instance_exists(oPDummy3)) fadeIn = true;
    else
    {
        fadeIn = false;
        fadeOut = true;
    }
}

if (fadeIn)
{
    drawStatus = -1;
    if (fadeLevel > 0) fadeLevel -= 0.1;
    else
    {
        fadeIn = false;
        if (not instance_exists(oPDummy3)) instance_create(-32, 184, oPDummy3);
    }
}
else if (fadeOut)
{
    if (fadeLevel < 1) fadeLevel += 0.1;
    else
    {
        global.gameStart = false;
        room_goto(rTitle);
    }
}

