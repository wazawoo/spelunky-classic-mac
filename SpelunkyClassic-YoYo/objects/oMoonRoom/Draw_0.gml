life = global.plife;
if (life < 0) life = 0;
draw_set_font(global.myFont);
draw_set_color(c_white);
draw_sprite(sHoopsIcon, -1, __view_get( e__VW.XView, 0 )+8, __view_get( e__VW.YView, 0 )+8);
draw_text(__view_get( e__VW.XView, 0 )+24, __view_get( e__VW.YView, 0 )+8, string_hash_to_newline(baskets));
draw_sprite(sTimerIcon, -1, __view_get( e__VW.XView, 0 )+64, __view_get( e__VW.YView, 0 )+8);
if (timer >= 0) draw_text(__view_get( e__VW.XView, 0 )+64+16, __view_get( e__VW.YView, 0 )+8, string_hash_to_newline(timer));
else draw_text(__view_get( e__VW.XView, 0 )+64+16, __view_get( e__VW.YView, 0 )+8, string_hash_to_newline("0"));
if (drawStatus < 3)
{
    draw_set_font(global.myFontSmall);
    draw_set_color(c_yellow);
    strLen = string_length("ARCHERY CHALLENGE BEGINS IN 3...")*8;
    n = 320 - strLen;
    n = ceil(n / 2);
    draw_text(n, 216, string_hash_to_newline("ARCHERY CHALLENGE BEGINS IN " + string(3-drawStatus) + "..."));
}
