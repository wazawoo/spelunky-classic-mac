draw_set_color(c_black);
draw_set_alpha(fadeLevel);
draw_rectangle(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 )+320, __view_get( e__VW.YView, 0 )+240, false);
draw_set_alpha(1);

if (drawStatus > 0)
{
    draw_set_font(global.myFontSmall);
    draw_set_color(c_white);
    strLen = string_length(str1)*8;
    n = 320 - strLen;
    n = ceil(n / 2);
    draw_text(n, 116-16, string_hash_to_newline(str1));
}
if (drawStatus > 1)
{
    draw_set_font(global.myFontSmall);
    draw_set_color(c_white);
    strLen = string_length(str2)*8;
    n = 320 - strLen;
    n = ceil(n / 2);
    draw_text(n, 116, string_hash_to_newline(str2));
}
if (drawStatus > 2)
{
    draw_set_font(global.myFontSmall);
    draw_set_color(c_white);
    strLen = string_length(str3)*8;
    n = 320 - strLen;
    n = ceil(n / 2);
    draw_text(n, 116+16, string_hash_to_newline(str3));
}

