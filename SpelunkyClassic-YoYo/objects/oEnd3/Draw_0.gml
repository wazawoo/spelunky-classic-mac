if (drawStatus > 0)
{
    draw_set_font(global.myFont);
    draw_set_color(c_yellow);
    draw_text(64, 32, string_hash_to_newline("YOU MADE IT!"));
}
if (drawStatus > 1)
{
    draw_set_font(global.myFontSmall);
    draw_set_color(c_yellow);
    draw_text(64, 64, string_hash_to_newline("FINAL SCORE:"));
}
if (drawStatus > 2)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    draw_text(64, 72, string_hash_to_newline("$" + string(moneyCount)));
}
if (drawStatus > 4)
{
    s = global.time;
    s = floor(s / 1000);
    m = 0;
    while (s > 59)
    {
        s -= 60;
        m += 1;
    }

    draw_set_font(global.myFontSmall);
    draw_set_color(c_yellow);
    draw_text(64, 96, string_hash_to_newline("TIME: "));
    draw_set_color(c_white);
    if (s < 10) draw_text(96+24, 96, string_hash_to_newline(string(m) + ":0" + string(s)));
    else draw_text(96+24, 96, string_hash_to_newline(string(m) + ":" + string(s)));
}
if (drawStatus > 5)
{
    draw_set_font(global.myFontSmall);
    draw_set_color(c_yellow);
    draw_text(64, 96+8, string_hash_to_newline("KILLS: "));
    draw_set_color(c_white);
    draw_text(96+24, 96+8, string_hash_to_newline(global.kills));
}
if (drawStatus > 6)
{
    draw_set_font(global.myFontSmall);
    draw_set_color(c_yellow);
    draw_text(64, 96+16, string_hash_to_newline("SAVES: "));
    draw_set_color(c_white);
    draw_text(96+24, 96+16, string_hash_to_newline(global.damsels));
}

if (fadeOut)
{
    draw_set_color(c_black);
    draw_set_alpha(fadeLevel);
    draw_rectangle(0, 0, 320, 240, false);
    draw_set_alpha(1);
}

if (drawStatus == 8)
{
    draw_set_font(global.myFontSmall);
    draw_set_color(c_white);
    strLen = string_length("YOU SHALL BE REMEMBERED AS A HERO.")*8;
    n = 320 - strLen;
    n = ceil(n / 2);
    draw_text(n, 116, string_hash_to_newline(string("YOU SHALL BE REMEMBERED AS A HERO.")));
}
