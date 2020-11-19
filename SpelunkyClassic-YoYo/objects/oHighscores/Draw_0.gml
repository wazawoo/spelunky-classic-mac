ini_open("spelunky.ini")

if (oPlayer1.y < 156)
{
    draw_set_font(global.myFontSmall);
    draw_set_color(c_yellow);
    draw_text(128+16, 32, string_hash_to_newline("SECRET CHALLENGES"));
    draw_set_color(c_white);
    tMini1 = floor(ini_read_real("highscore","value10",0) / 10000);
    tMini2 = floor((ini_read_real("highscore","value10",0)-(tMini1*10000)) / 100);
    tMini3 = floor(ini_read_real("highscore","value10",0)-(tMini1*10000)-(tMini2*100));
    draw_text(128, 48, string_hash_to_newline("SUN:   " + string(tMini1)));
    draw_text(128, 64, string_hash_to_newline("MOON:  " + string(tMini2)));
    draw_text(128, 80, string_hash_to_newline("STARS: " + string(tMini3)));
    
    if (oPlayer1.y < 48+16)
    {
        draw_set_color(c_yellow);
        draw_text(168, 96, string_hash_to_newline("SUN ROOM"));
        draw_set_color(c_white);
        if (tMoney >= sunGold)
        {
            if (false) // (global.isTunnelMan)
            {
                draw_text(128, 112, string_hash_to_newline("NO MATTOCKS ALLOWED!"));
                draw_text(128, 128, string_hash_to_newline("THIS MEANS YOU!"));
                draw_text(128, 144, string_hash_to_newline(""));
                draw_text(128, 160, string_hash_to_newline(""));
            }
            else
            {
                draw_text(128, 112, string_hash_to_newline("KEEP YOURSELF AND"));
                draw_text(128, 128, string_hash_to_newline("THE DAMSEL ALIVE"));
                draw_text(128, 144, string_hash_to_newline("FOR AS LONG AS"));
                draw_text(128, 160, string_hash_to_newline("POSSIBLE!"));
            }
        }
        else
        {
            draw_text(128, 112, string_hash_to_newline("LOCKED."));
        }
    }
    else if (oPlayer1.y < 80+16)
    {
        draw_set_color(c_yellow);
        draw_text(168, 96, string_hash_to_newline("MOON ROOM"));
        draw_set_color(c_white);
        if (tTime > 0 and tTime <= moonGold)
        {
            if (false) // (global.isTunnelMan)
            {
                draw_text(128, 112, string_hash_to_newline("NO MATTOCKS ALLOWED!"));
                draw_text(128, 128, string_hash_to_newline("THIS MEANS YOU!"));
                draw_text(128, 144, string_hash_to_newline(""));
                draw_text(128, 160, string_hash_to_newline(""));
            }
            else
            {
                draw_text(128, 112, string_hash_to_newline("SHOOT THE MOVING"));
                draw_text(128, 128, string_hash_to_newline("TARGETS WITH YOUR"));
                draw_text(128, 144, string_hash_to_newline("BOW AND ARROWS!"));
            }
        }
        else
        {
            draw_text(128, 112, string_hash_to_newline("LOCKED."));
        }
    }
    else if (oPlayer1.y < 112+16)
    {
        draw_set_color(c_yellow);
        draw_text(168, 96, string_hash_to_newline("STARS ROOM"));
        draw_set_color(c_white);
        if (tKills >= starsGold)
        {
            if (false) // (global.isTunnelMan)
            {
                draw_text(128, 112, string_hash_to_newline("NO MATTOCKS ALLOWED!"));
                draw_text(128, 128, string_hash_to_newline("THIS MEANS YOU!"));
                draw_text(128, 144, string_hash_to_newline(""));
                draw_text(128, 160, string_hash_to_newline(""));
            }
            else
            {
                draw_text(128, 112, string_hash_to_newline("KILL AS MANY ANGRY"));
                draw_text(128, 128, string_hash_to_newline("SHOPKEEPS AS YOU CAN"));
                draw_text(128, 144, string_hash_to_newline("BEFORE THEY GET YOU!"));
            }
        }
        else
        {
            draw_text(128, 112, string_hash_to_newline("LOCKED."));
        }
    }
    else if (oPlayer1.y < 160)
    {
        draw_set_color(c_yellow);
        draw_text(160, 96, string_hash_to_newline("CHANGING ROOM"));
        draw_set_color(c_white);
        if (tSaves >= 8)
        {
            draw_text(128, 112, string_hash_to_newline("LADY IN RED..."));
        }
        else
        {
            draw_text(128, 112, string_hash_to_newline("LOCKED."));
        }
        with oNew
        {
            visible = false;
        }
    }
    
}
else
{
with oNew
{
    visible = true;
}
draw_set_font(global.myFontSmall);
draw_set_color(c_yellow);
draw_text(160, 32, string_hash_to_newline("TOP DEFILERS"));
draw_set_color(c_white);
draw_text(128, 48, string_hash_to_newline("MONEY:  " + string(ini_read_real("highscore","value1",0)-0)));
draw_text(128, 64, string_hash_to_newline("KILLS:  " + string(ini_read_real("highscore","value3",0)-0)));
draw_text(128, 80, string_hash_to_newline("SAVES:  " + string(ini_read_real("highscore","value4",0)-0)));
// only display time if won
if (ini_read_real("highscore","value6",0)-0 > 0)
{
    s = ini_read_real("highscore","value2",0)-0;
    // s = floor(s / 1000);
    m = 0;
    while (s > 59)
    {
        s -= 60;
        m += 1;
    }
    
    draw_set_color(c_white);
    draw_text(128, 96, string_hash_to_newline("TIME: "));
    if (s < 10) draw_text(128+64, 96, string_hash_to_newline(string(m) + ":0" + string(s)));
    else draw_text(128+64, 96, string_hash_to_newline(string(m) + ":" + string(s)));
}
draw_set_color(c_yellow);
draw_text(168, 112, string_hash_to_newline("STATISTICS"));
draw_set_color(c_white);
draw_text(128, 128, string_hash_to_newline("PLAYS:  " + string(ini_read_real("highscore","value5",0)-0)));
draw_text(128, 144, string_hash_to_newline("DEATHS: " + string(ini_read_real("highscore","value7",0)-0)));
draw_text(128, 160, string_hash_to_newline("WINS:   " + string(ini_read_real("highscore","value6",0)-0)));

block = instance_nearest(160, 240, oPushBlock);
if (not oButtonHighscore.pushed and block.x > 160)
{
    draw_set_font(global.myFontSmall);
    draw_set_color(c_yellow);
    strLen = string_length("THIS WILL CLEAR EVERYTHING!")*8;
    n = 320 - strLen;
    n = ceil(n / 2);
    draw_text(n, 216, string_hash_to_newline(string("THIS WILL CLEAR EVERYTHING!")));
}}


ini_close()

