if (keyboard_check_pressed(vk_enter) or
    keyboard_check_pressed(vk_escape) or
    checkAttack())
{
    if (instance_exists(oCamel))
    {
        if (fadeIn)
        {
            fadeLevel = 0;
        }
        else
        {
            fadeOut = true;
        }
    }
}


if (instance_exists(oCamel))
{
    if (oCamel.x <= 160 and not scrollStart)
    {
        with oDesertScroll
        {
            scroll = true;
        }
        alarm[1] = 1;
        alarm[2] = 20;
        scrollStart = true;
        scrolling = true;
    }
}

if (fadeIn)
{
    if (fadeLevel > 0) fadeLevel -= 0.1;
    else
    {
        fadeIn = false;
        alarm[0] = 20;
    }
}
else if (fadeOut)
{
    if (fadeLevel < 1) fadeLevel += 0.1;
    else
    {
        game_end();
    }
}
