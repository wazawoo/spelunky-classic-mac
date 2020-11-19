/// @description Draw the HUD

display_set_gui_size(__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ))

scrDrawHUD()

if (global.messageTimer > 0)
{
    draw_set_font(global.myFontSmall);
    draw_set_color(c_white);
    strLen = string_length(global.message)*8;
    n = 320 - strLen;
    n = ceil(n / 2);
    draw_text(n, 216, string_hash_to_newline(string(global.message)));

    if (not isRoom("rTutorial")) draw_set_color(c_yellow);
    strLen = string_length(global.message2)*8;
    n = 320 - strLen;
    n = ceil(n / 2);
    draw_text(n, 224, string_hash_to_newline(string(global.message2)));

    global.messageTimer -= 1;
}

