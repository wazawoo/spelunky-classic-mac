if (instance_exists(oFlare) and needDark)
{
    dist = 160 - oFlare.y;
    if (dist < 0) dist = 0;
    darkness = dist / 160;
    if (darkness == 0) needDark = false;
}

draw_set_alpha(1);

/*
draw_set_font(global.myFontSmall);
draw_set_color(c_yellow);
draw_text(320+96, 96, "V1.1 (C)2009");
*/

if (instance_exists(oPlayer1))
{
    player = instance_nearest(0, 0, oPlayer1);
    if (player.x < 256 and __view_get( e__VW.XView, 0 ) <= 1)
    {
        draw_set_font(global.myFontSmall);
        draw_set_color(c_white);
        strLen = string_length("WELCOME TO THE SHORTCUT HOUSE!")*8;
        n = 320 - strLen;
        n = ceil(n / 2);
        draw_text(n, 224, string_hash_to_newline(string("WELCOME TO THE SHORTCUT HOUSE!")));
    }
}

/* */
/*  */
