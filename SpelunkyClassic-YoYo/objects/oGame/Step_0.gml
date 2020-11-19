script_execute(gameStepEvent,0,0,0,0,0);
if (not instance_exists(oXMarket)) global.udjatBlink = false;
else
{
    with oPlayer1
    {
        dm = distance_to_object(oXMarket);
        if (dm < 4) dm = 4;
        if (oGame.alarm[2] < 1 or dm < oGame.alarm[2]) oGame.alarm[2] = dm;
    }
}

if (global.gameStart and instance_exists(oCharacter) and isLevel())
{
    if (not oCharacter.dead)
    {
        global.time += room_speed;
        global.xtime += room_speed;
    }
}

// GHOST
if (instance_exists(oPlayer1))
{
    if (isLevel() and not isRoom("rOlmec") and not isRoom("rLoadLevel") and global.currLevel > 1 and
        not global.hasCrown and global.xtime > 120000 and
        oPlayer1.sprite_index != sPExit and oPlayer1.sprite_index != sDamselExit)
    {
        if (not oLevel.musicFade)
        {
            oLevel.musicFade = true;
            global.message = "A CHILL RUNS UP YOUR SPINE...";
            global.message2 = "LET'S GET OUT OF HERE!";
            global.messageTimer = 200;
        }
    }
    
    if (isLevel() and not isRoom("rOlmec") and not isRoom("rLoadLevel") and global.currLevel > 1 and
        not global.hasCrown and global.xtime > 150000 and not global.ghostExists and
        oPlayer1.sprite_index != sPExit and oPlayer1.sprite_index != sDamselExit)
    {
        if (oPlayer1.x > room_width / 2) instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+8, __view_get( e__VW.YView, 0 )+floor(__view_get( e__VW.HView, 0 ) / 2), oGhost);
        else instance_create(__view_get( e__VW.XView, 0 )-32,  __view_get( e__VW.YView, 0 )+floor(__view_get( e__VW.HView, 0 ) / 2), oGhost);
        global.ghostExists = true;
    }
}

if (global.checkWater)
{
    global.waterCounter = 0;
    with oWater
    {
        // if (y > view_yview[0]-32 and y < view_yview[0] + view_hview[0]+32 and not isRoom("rOlmec"))
        if (not isRoom("rOlmec"))
        {
            if ((!isRoom("rLoadLevel") and y < 512) or isRoom("rLoadLevel"))
            {
        
            instance_activate_region(x-16, y-16, 48, 48, true);
        
            if (not collision_point(x, y-16, oSolid, 0, 0) and not collision_point(x, y-16, oWater, 0, 0))
            {
                if (type == "Lava") sprite_index = sLavaTop;
                else sprite_index = sWaterTop;
            }
            
            obj = instance_place(x-16, y, oWater);
            if (instance_exists(obj))
            {
                if (obj.sprite_index == sWaterTop or obj.sprite_index == sLavaTop)
                {
                    if (type == "Lava") sprite_index = sLavaTop;
                    else sprite_index = sWaterTop;
                }
            }
            
            obj = instance_place(x+16, y, oWater);
            if (instance_exists(obj))
            {
                if (obj.sprite_index == sWaterTop or obj.sprite_index == sLavaTop)
                {
                    if (type == "Lava") sprite_index = sLavaTop;
                    else sprite_index = sWaterTop;
                }
            }
            
            if ((not collision_point(x-16, y, oSolid, 0, 0) and not collision_point(x-16, y, oWater, 0, 0)) or
                (not collision_point(x+16, y, oSolid, 0, 0) and not collision_point(x+16, y, oWater, 0, 0)) or
                (not collision_point(x, y+16, oSolid, 0, 0) and not collision_point(x, y+16, oWater, 0, 0))) 
            {
                instance_destroy();
                global.waterCounter += 1;
            }
            
            global.waterLoopSafety += 1;
            if (global.waterLoopSafety > 100000) global.checkWater = false;
            
            }
        }
    }
    
    if (global.waterCounter == 0) global.checkWater = false;
}
else
{
    global.waterLoopSafety = 0;
}

// game over
if (instance_exists(oPlayer1))
{
    if (oPlayer1.dead)
    {
        if (drawStatus == 0)
        {
            alarm[0] = 50;
            drawStatus += 1;
        }
        if (drawStatus > 2)
        {
            moneyDiff = global.money - moneyCount;
            if (moneyDiff > 1000)
                moneyCount += 1000;
            else if (moneyDiff > 100)
                moneyCount += 100;
            else
                moneyCount += moneyDiff;
       }
    }
}

