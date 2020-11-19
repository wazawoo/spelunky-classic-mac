if (keyboard_key != vk_escape)
{
if (status == 0)
{
    global.keyUpVal = keyboard_key;
}
else if (status == 1)
{
    global.keyDownVal = keyboard_key;
}
else if (status == 2)
{
    global.keyLeftVal = keyboard_key;
}
else if (status == 3)
{
    global.keyRightVal = keyboard_key;
}
else if (status == 4)
{
    global.keyJumpVal = keyboard_key;
}
else if (status == 5)
{
    global.keyAttackVal = keyboard_key;
}
else if (status == 6)
{
    global.keyItemVal = keyboard_key;
}
else if (status == 7)
{
    global.keyRunVal = keyboard_key;
}
else if (status == 8)
{
    global.keyBombVal = keyboard_key;
}
else if (status == 9)
{
    global.keyRopeVal = keyboard_key;
}
else if (status == 10)
{
    global.keyFlareVal = keyboard_key;
}
else if (status == 11)
{
    global.keyPayVal = keyboard_key;
}
}

status += 1;
if (status > 11) room_goto(rInit);
