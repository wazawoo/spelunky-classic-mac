scrReadStats();
scrInit();
global.fullscreen = false;

instance_destroy();
//instance_create(0,0,oScreenFirst)
//instance_create(0,0,oScreenLast)

py = 0; // player Y coord

// screen base(view_wview and view_hview)
screen_x = 0;
screen_y = 0;
screen_w = 960//browser_height*(960/720) //960//320;
screen_h = 720//browser_height//720//240;
screen_scale =  1; //global.screenScale;

enabled = true;

// pause
pSurf = -1 surface_create(screen_w,screen_h);  //    MJD
canPause = true;
paused = false;

// create a surface for the whole screen to be drawn on
screen = -1; //surface_create(screen_w,screen_h);
darkSurf = surface_create(screen_w,screen_h);

/*
if (screen)
{
    surface_set_target(screen);
    draw_clear(c_black);
}
*/
// set up rooms
var w,h;
w = 320 * screen_scale;
h = 240 * screen_scale;
room_set_view(rIntro,0,true,0,0,320,240,0,0,w,h,128,0,-1,-1,oPDummy3);
room_set_view(rCredits1,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone);
room_set_view(rCredits2,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone);
room_set_view(rTitle,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone);
room_set_view(rHighscores,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone);
room_set_view(rSun,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone);
room_set_view(rMoon,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone);
room_set_view(rStars,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone);
room_set_view(rLevelEditor,0,true,0,0,320,240,0,0,w,h,0,0,-1,-1,noone);
room_set_view(rLoadLevel,0,true,0,0,320,240,0,0,w,h,128,96,-1,-1,oPlayer1);
room_set_view(rTutorial,0,true,0,0,320,240,0,0,w,h,128,96,-1,-1,oPlayer1);
room_set_view(rLevel,0,true,0,0,320,240,0,0,w,h,128,96,-1,-1,oPlayer1);
room_set_view(rLevel2,0,true,0,0,320,240,0,0,w,h,128,96,-1,-1,oPlayer1);
room_set_view(rLevel3,0,true,0,0,320,240,0,0,w,h,128,96,-1,-1,oPlayer1);
room_set_view(rOlmec,0,true,0,0,320,240,0,0,w,h,128,96,-1,-1,oPlayer1);
room_set_view(rTransition1,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone);
room_set_view(rTransition1x,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone);
room_set_view(rTransition2,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone);
room_set_view(rTransition2x,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone);
room_set_view(rTransition3,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone);
room_set_view(rTransition3x,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone);
room_set_view(rTransition4,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone);
room_set_view(rEnd,0,true,0,0,320,240,0,0,w,h,0,0,0,0,oPDummy);
room_set_view(rEnd2,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone);
room_set_view(rEnd3,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone);
room_set_view(rEndCustom,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone);

// this will destroy the screen object if surfaces are not supported on the graphics card, reverting to the viewport method
/*if (screen == -1) game_end2();
else*/
 room_goto_next();

/* */
/*  */
