if (keyboard_check_pressed(vk_enter) or
    keyboard_check_pressed(vk_escape) or
    checkAttackPressed() or
    checkStartPressed())
{
    if (gamepad.attackPressed) gamepad.attackPressed = false;
    if (gamepad.startPressed) gamepad.startPressed = false;
    global.gameStart = false;
    room_goto(rEnd3);
}
