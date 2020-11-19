timer += 1;
if (keyboard_check_pressed(vk_enter) or
    keyboard_check_pressed(vk_escape) or
    checkAttackPressed() or
    checkStartPressed())
{
    if (timer > 50)
    {
        if (gamepad.attackPressed) gamepad.attackPressed = false;
        if (gamepad.startPressed) gamepad.startPressed = false;
        global.gameStart = false;
        room_goto(rEnd3);
    }
}

// shake the screen
if (global.shake > 0)
{
    //view_xview[0] = view_xview[0] + rand(0,3) - rand(0,3);
    //view_yview[0] = view_yview[0] + rand(0,3) - rand(0,3);
    //if (view_yview[0] > 16) view_yview[0] = 16 - rand(0,8);
    //if (view_yview[0] < 0) view_yview[0] = 0 + rand(0,8);
    if (shakeToggle) __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + rand(1,8) );
    else __view_set( e__VW.YView, 0, 0 );
    shakeToggle = not shakeToggle;
    global.shake -= 1;
}
else
{
    __view_set( e__VW.YView, 0, 0 );
}

if (__view_get( e__VW.XView, 0 ) < room_width - 320) __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (1) );
