draw_sprite(sprite_index, -1, x, y);
if (isRoom("rLevelEditor"))
{
    draw_set_font(global.myFontSmall);
    draw_set_color(c_white);
    draw_text(x, y, string_hash_to_newline(leadsTo));
}
