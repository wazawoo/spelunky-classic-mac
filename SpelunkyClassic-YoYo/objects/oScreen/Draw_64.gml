/// @description NEW

//pSurf
//darkSurf
//screen

//MJD
//display_set_gui_size(view_wview[0],view_hview[0])

if (paused)
{
    /*surface_set_target(pSurf)
    
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    draw_text(112, 200, "PAUSED");
    draw_set_font(global.myFontSmall);
    if (isLevel())
    {
        n = 128-24;
        if (global.currLevel < 1) draw_text(40, n-24, "TUTORIAL CAVE");
        else if (isRoom("rLoadLevel")) draw_text(40, n-24, "LEVEL: " + global.customLevelName + " BY " + global.customLevelAuthor);
        else draw_text(40, n-24, "LEVEL " + string(global.currLevel));
        draw_text(40, n-16, "DEPTH: " + string(174.8*(global.currLevel-1)+(py+8)*0.34) + " FEET");
        draw_text(40, n, "MONEY: " + string(global.money));
        draw_text(40, n+8, "KILLS: " + string(global.kills));
        s = global.xtime;
        s = floor(s / 1000);
        m = 0;
        while (s > 59)
        {
            s -= 60;
            m += 1;
        }
        if (s < 10) str = "0" + string(s);
        else str = string(s);
        s2 = global.time;
        s2 = floor(s2 / 1000);
        m2 = 0;
        while (s2 > 59)
        {
            s2 -= 60;
            m2 += 1;
        }
        if (s2 < 10) str2 = "0" + string(s2);
        else str2 = string(s2);
        draw_text(40, n+16, "TIME:  " + string(m) + ":" + str + " / " + string(m2) + ":" + str2);
        draw_text(40, n+24, "SAVES: " + string(global.damsels));
        if (global.gamepadOn) draw_text(24, 216, "START-RETURN  BOMB-DIE  ROPE-QUIT/RESET");
        else draw_text(40, 216, "ESC-RETURN  F1-DIE  F9-QUIT/RESET");
    }
    else
    {
        if (global.gamepadOn) draw_text(64, 216, "START-RETURN  ROPE-QUIT/RESET");
        else draw_text(80, 216, "ESC-RETURN  F9-QUIT/RESET");
    }
    
    global.drawpSurf=1
    draw_surface_stretched(pSurf,screen_x,screen_y,window_get_width(),window_get_height());
    draw_surface_stretched(pSurf,screen_x,screen_y,screen_w*screen_scale*(window_get_width()/view_wview[0]),screen_h*screen_scale*(window_get_height()/view_hview[0]));
    
    //if view_current=0 draw_surface_stretched(pSurf,screen_x,screen_y,screen_w*screen_scale,screen_h*screen_scale);*/
}
else
{
    if (isRoom("rTitle"))
    {
//        draw_set_alpha(oTitle.darkness);
//        draw_set_color(c_black);
//        if (oTitle.darkness > 0) draw_rectangle(0, 0, screen_w, screen_h, false);
        if (oTitle.state == 1)
        {
            draw_set_font(global.myFontSmall);
            draw_set_color(c_white);
            draw_text(88, 48, string_hash_to_newline("DEREK YU PRESENTS"));
        }
//        draw_set_alpha(1);
    }
}

/* */
/*  */
