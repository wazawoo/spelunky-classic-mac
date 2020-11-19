return -1; 
with(oScreen)
{
    screen_w = 960//browser_height*(960/720)
    screen_h = 720//browser_height
    
    if (not surface_exists(pSurf)) pSurf = surface_create(screen_w, screen_h);
    if (not surface_exists(screen)) screen = surface_create(screen_w, screen_h);
    if (not surface_exists(darkSurf)) darkSurf = surface_create(screen_w, screen_h);
    
    if (checkBombPressed())
    {
        if (paused and global.plife > 0 and isLevel())
        {
            instance_activate_all();
            paused = false;
            with oPlayer1
            {
                if (facing == 18) xVel = -3;
                else xVel = 3;
                yVel = -6;
                global.plife = -99;
            }
        
            if (SS_IsSoundPlaying(global.musTitle)) SS_SetSoundVol(global.musTitle, 2000 + 8000 * (global.musicVol/18));
            if (SS_IsSoundPlaying(global.musCave)) SS_SetSoundVol(global.musCave, 2000 + 8000 * (global.musicVol/18));
            if (SS_IsSoundPlaying(global.musLush)) SS_SetSoundVol(global.musLush, 2000 + 8000 * (global.musicVol/18));
            if (SS_IsSoundPlaying(global.musIce)) SS_SetSoundVol(global.musIce, 2000 + 8000 * (global.musicVol/18));
            if (SS_IsSoundPlaying(global.musTemple)) SS_SetSoundVol(global.musTemple, 2000 + 8000 * (global.musicVol/18));
            if (SS_IsSoundPlaying(global.musBoss)) SS_SetSoundVol(global.musBoss, 2000 + 8000 * (global.musicVol/18));
            
            if (not global.hasAnkh) stopAllMusic();
        }
    }
    
    else if (checkRopePressed())
    {
        if (paused)
            game_end2();
    }
    /*else if (checkStartPressed())
    {
        if (not paused and canPause)
        {
            if (instance_exists(oPlayer1))
            {
                if (not oPlayer1.dead)
                {
                    surface_set_target(pSurf);
                    
                    if (global.darkLevel) draw_set_alpha(1);
                    else draw_set_alpha(0.9);
                    draw_set_color(c_black);
                    draw_rectangle(0, 0, screen_w*screen_scale, screen_h*screen_scale, false);
                    draw_set_alpha(1);
                    if (SS_IsSoundPlaying(global.musTitle)) SS_SetSoundVol(global.musTitle, 0);
                    if (SS_IsSoundPlaying(global.musCave)) SS_SetSoundVol(global.musCave, 0);
                    if (SS_IsSoundPlaying(global.musLush)) SS_SetSoundVol(global.musLush, 0);
                    if (SS_IsSoundPlaying(global.musIce)) SS_SetSoundVol(global.musIce, 0);
                    if (SS_IsSoundPlaying(global.musTemple)) SS_SetSoundVol(global.musTemple, 0);
                    if (SS_IsSoundPlaying(global.musBoss)) SS_SetSoundVol(global.musBoss, 0);
                    py = oPlayer1.y;
                    
                    //instance_deactivate_all(true);
                    with(all)
                    {
                        if object_index!=oGamepad
                        && object_index!=oNAL
                        && object_index!=oScreenFirst
                        && object_index!=oScreenLast
                        && object_index!=oScreen
                        {
                            instance_deactivate_object(id)
                        }
                    }
                    /*instance_activate_object(oGamepad);
                    instance_activate_object(oNAL);
                    instance_activate_object(oScreenFirst);
                    instance_activate_object(oScreenLast);
                    instance_activate_object(oScreen);
                    
                    paused = true;
                }
            }
        }
        else
        {
            instance_activate_all();
            if (SS_IsSoundPlaying(global.musTitle)) SS_SetSoundVol(global.musTitle, 2000 + 8000 * (global.musicVol/18));
            if (SS_IsSoundPlaying(global.musCave)) SS_SetSoundVol(global.musCave, 2000 + 8000 * (global.musicVol/18));
            if (SS_IsSoundPlaying(global.musLush)) SS_SetSoundVol(global.musLush, 2000 + 8000 * (global.musicVol/18));
            if (SS_IsSoundPlaying(global.musIce)) SS_SetSoundVol(global.musIce, 2000 + 8000 * (global.musicVol/18));
            if (SS_IsSoundPlaying(global.musTemple)) SS_SetSoundVol(global.musTemple, 2000 + 8000 * (global.musicVol/18));
            if (SS_IsSoundPlaying(global.musBoss)) SS_SetSoundVol(global.musBoss, 2000 + 8000 * (global.musicVol/18));
            paused = false;
        }
    }*/
    
    // this draws the surface on the screen
    surface_reset_target();
    draw_clear(0);
    if (paused)
    {
        //draw_surface_stretched(pSurf,screen_x,screen_y,window_get_width(),window_get_height());
        global.drawpSurf=1
    }
    else
    {
        if (isRoom("rTitle"))
        {
            surface_set_target(screen);
            draw_set_alpha(oTitle.darkness);
            draw_set_color(c_black);
    
            draw_set_alpha(1);
            surface_reset_target();
        }
        else if (isLevel() and instance_exists(oPlayer1))
        {
            if (global.darkLevel and not oPlayer1.dead)
            {
                surface_set_target(darkSurf);
                draw_set_color(c_black);
                draw_rectangle(0, 0, screen_w, screen_h, false);
                draw_set_color(make_color_rgb(255-255*oLevel.darkness,255-255*oLevel.darkness,255));
                if (instance_exists(oLampRed))
                {
                    with oPlayer1
                    {
                        distToLamp = distance_to_object(oLampRed);
                        if (distToLamp <= 96)
                        {
                            draw_set_color(make_color_rgb(255-distToLamp,120-(96-distToLamp),120-(96-distToLamp)));
                        }
                    }
                }
                if (instance_exists(oLampRedItem))
                {
                    with oPlayer1
                    {
                        distToLamp = distance_to_object(oLampRedItem);
                        if (distToLamp <= 96)
                        {
                            draw_set_color(make_color_rgb(255-distToLamp,120-(96-distToLamp),120-(96-distToLamp)));
                        }
                    }
                }
                draw_circle(oPlayer1.x-__view_get( e__VW.XView, 0 ), oPlayer1.y-__view_get( e__VW.YView, 0 ), 96-64*oLevel.darkness, false);
                with oFlare
                {
                    draw_circle(x-__view_get( e__VW.XView, 0 ), y-__view_get( e__VW.YView, 0 ), 96, false);
                }
                with oFlareCrate
                {
                    draw_circle(x-__view_get( e__VW.XView, 0 ), y-__view_get( e__VW.YView, 0 ), 96, false);
                }
                with oLamp
                {
                    draw_circle((x+8)-__view_get( e__VW.XView, 0 ), (y+8)-__view_get( e__VW.YView, 0 ), 96, false);
                }
                with oLampItem
                {
                    draw_circle(x-__view_get( e__VW.XView, 0 ), (y-4)-__view_get( e__VW.YView, 0 ), 96, false);
                }
                with oArrowTrapLeftLit
                {
                    draw_circle((x+8)-__view_get( e__VW.XView, 0 ), (y+8)-__view_get( e__VW.YView, 0 ), 32, false);
                }
                with oArrowTrapRightLit
                {
                    draw_circle((x+8)-__view_get( e__VW.XView, 0 ), (y+8)-__view_get( e__VW.YView, 0 ), 32, false);
                }
                with oTikiTorch
                {
                    draw_circle((x+8)-__view_get( e__VW.XView, 0 ), (y+8)-__view_get( e__VW.YView, 0 ), 32, false);
                }
                with oFireFrog
                {
                    draw_circle((x+8)-__view_get( e__VW.XView, 0 ), (y+8)-__view_get( e__VW.YView, 0 ), 32, false);
                }
                with oSpearTrapLit
                {
                    draw_circle((x+8)-__view_get( e__VW.XView, 0 ), (y+8)-__view_get( e__VW.YView, 0 ), 32, false);
                }
                with oSmashTrapLit
                {
                    draw_circle((x+8)-__view_get( e__VW.XView, 0 ), (y+8)-__view_get( e__VW.YView, 0 ), 32, false);
                }
                with oExplosion
                {
                    draw_circle(x-__view_get( e__VW.XView, 0 ), y-__view_get( e__VW.YView, 0 ), 96, false);
                }
                with oLava
                {
                    draw_circle((x+8)-__view_get( e__VW.XView, 0 ), (y+8)-__view_get( e__VW.YView, 0 ), 32, false);
                }
                with oScarab
                {
                    draw_circle((x+8)-__view_get( e__VW.XView, 0 ), (y+8)-__view_get( e__VW.YView, 0 ), 16, false);
                }
                with oGhost
                {
                    draw_circle((x+16)-__view_get( e__VW.XView, 0 ), (y+16)-__view_get( e__VW.YView, 0 ), 64, false);
                }
                //surface_set_target(screen);
            }
            surface_reset_target();
        }
    
        // DFK
        // draw_set_blend_mode_ext(bm_one, bm_zero); // According to ChevyRay, this should fix the black box glitch
        if view_current=0
        {
            global.drawscreen=1
            //draw_surface_stretched(screen,screen_x,screen_y,screen_w*screen_scale,screen_h*screen_scale);
        }
        // DFK
        // draw_set_blend_mode(bm_normal); // According to ChevyRay, this should fix the black box glitch
    }
}

/* */
/*  */
