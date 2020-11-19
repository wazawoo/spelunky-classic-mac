draw_set_font(global.myFontSmall);
draw_set_color(c_yellow);
strLen = string_length("PRESS KEY FOR")*8;
n = 160 - strLen;
n = ceil(n / 2);
draw_text(n, 32, string_hash_to_newline("PRESS KEY FOR"));
draw_text(8, 96, string_hash_to_newline("ESC TO KEEP SAME."));
draw_text(8, 104, string_hash_to_newline("CURRENT: "));

if (status == 0)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("UP")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 40, string_hash_to_newline("UP"));
    currVal = global.keyUpVal;
}
else if (status == 1)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("DOWN")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 40, string_hash_to_newline("DOWN"));
    currVal = global.keyDownVal;
}
else if (status == 2)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("LEFT")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 40, string_hash_to_newline("LEFT"));
    currVal = global.keyLeftVal;
}
else if (status == 3)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("RIGHT")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 40, string_hash_to_newline("RIGHT"));
    currVal = global.keyRightVal;
}
else if (status == 4)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("JUMP")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 40, string_hash_to_newline("JUMP"));
    currVal = global.keyJumpVal;
}
else if (status == 5)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("ACTION")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 40, string_hash_to_newline("ACTION"));
    currVal = global.keyAttackVal;
}
else if (status == 6)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("SWITCH")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 40, string_hash_to_newline("SWITCH"));
    currVal = global.keyItemVal;
}
else if (status == 7)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("RUN")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 40, string_hash_to_newline("RUN"));
    currVal = global.keyRunVal;
}
else if (status == 8)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("BOMB")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 40, string_hash_to_newline("BOMB"));
    currVal = global.keyBombVal;
}
else if (status == 9)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("ROPE")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 40, string_hash_to_newline("ROPE"));
    currVal = global.keyRopeVal;
}
else if (status == 10)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("FLARE")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 40, string_hash_to_newline("FLARE"));
    currVal = global.keyFlareVal;
}
else if (status == 11)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("PURCHASE")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 40, string_hash_to_newline("PURCHASE"));
    currVal = global.keyPayVal;
}

draw_set_font(global.myFontSmall);
switch (currVal)
{
    case vk_up: { draw_text(80, 104, string_hash_to_newline("UP ARR")); break; }
    case vk_down: { draw_text(80, 104, string_hash_to_newline("DOWN ARR")); break; }
    case vk_left: { draw_text(80, 104, string_hash_to_newline("LEFT ARR")); break; }
    case vk_right: { draw_text(80, 104, string_hash_to_newline("RIGHT ARR")); break; }
    case vk_shift: { draw_text(80, 104, string_hash_to_newline("SHIFT")); break; }
    case vk_control: { draw_text(80, 104, string_hash_to_newline("CTRL")); break; }
    case vk_alt: { draw_text(80, 104, string_hash_to_newline("ALT")); break; }
    case vk_space: { draw_text(80, 104, string_hash_to_newline("SPACE")); break; }
    case vk_enter: { draw_text(80, 104, string_hash_to_newline("ENTER")); break; }
    case ord("A"): { draw_text(80, 104, string_hash_to_newline("A")); break; }
    case ord("B"): { draw_text(80, 104, string_hash_to_newline("B")); break; }
    case ord("C"): { draw_text(80, 104, string_hash_to_newline("C")); break; }
    case ord("D"): { draw_text(80, 104, string_hash_to_newline("D")); break; }
    case ord("E"): { draw_text(80, 104, string_hash_to_newline("E")); break; }
    case ord("F"): { draw_text(80, 104, string_hash_to_newline("F")); break; }
    case ord("G"): { draw_text(80, 104, string_hash_to_newline("G")); break; }
    case ord("H"): { draw_text(80, 104, string_hash_to_newline("H")); break; }
    case ord("I"): { draw_text(80, 104, string_hash_to_newline("I")); break; }
    case ord("J"): { draw_text(80, 104, string_hash_to_newline("J")); break; }
    case ord("K"): { draw_text(80, 104, string_hash_to_newline("K")); break; }
    case ord("L"): { draw_text(80, 104, string_hash_to_newline("L")); break; }
    case ord("M"): { draw_text(80, 104, string_hash_to_newline("M")); break; }
    case ord("N"): { draw_text(80, 104, string_hash_to_newline("N")); break; }
    case ord("O"): { draw_text(80, 104, string_hash_to_newline("O")); break; }
    case ord("P"): { draw_text(80, 104, string_hash_to_newline("P")); break; }
    case ord("Q"): { draw_text(80, 104, string_hash_to_newline("Q")); break; }
    case ord("R"): { draw_text(80, 104, string_hash_to_newline("R")); break; }
    case ord("S"): { draw_text(80, 104, string_hash_to_newline("S")); break; }
    case ord("T"): { draw_text(80, 104, string_hash_to_newline("T")); break; }
    case ord("U"): { draw_text(80, 104, string_hash_to_newline("U")); break; }
    case ord("V"): { draw_text(80, 104, string_hash_to_newline("V")); break; }
    case ord("W"): { draw_text(80, 104, string_hash_to_newline("W")); break; }
    case ord("X"): { draw_text(80, 104, string_hash_to_newline("X")); break; }
    case ord("Y"): { draw_text(80, 104, string_hash_to_newline("Y")); break; }
    case ord("Z"): { draw_text(80, 104, string_hash_to_newline("Z")); break; }
    default: { draw_text(80, 104, string_hash_to_newline("KEY " + string(currVal))); break; }
}


