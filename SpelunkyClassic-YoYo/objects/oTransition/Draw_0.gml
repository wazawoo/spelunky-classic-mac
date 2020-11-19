draw_set_font(global.myFontSmall);
draw_set_color(c_white);
if (instance_exists(oTunnelMan))
{
    person = instance_nearest(176, 176, oTunnelMan);
    if (person.talk == 1)
    {
        strLen = string_length("HEY THERE! I'M THE TUNNEL MAN!")*8;
        n = 320 - strLen;
        n = ceil(n / 2);
        draw_text(n, 208, string_hash_to_newline("HEY THERE! I'M THE TUNNEL MAN!"));
        strLen = string_length("I DIG SHORTCUTS.")*8;
        n = 320 - strLen;
        n = ceil(n / 2);
        draw_text(n, 216, string_hash_to_newline("I DIG SHORTCUTS."));
    }
    else if (person.talk == 2)
    {
        strLen = string_length("CAN YOU LEND ME A LITTLE MONEY?")*8;
        n = 320 - strLen;
        n = ceil(n / 2);
        draw_text(n, 208, string_hash_to_newline("CAN YOU LEND ME A LITTLE MONEY?"));
        if (isRoom("rTransition1x") or isRoom("rTransition3x")) strLen = string_length("I NEED $" + string(global.tunnel1) + " FOR A NEW SHORTCUT.")*8;
        else strLen = string_length("I NEED $" + string(global.tunnel2) + " FOR A NEW SHORTCUT.")*8;
        n = 320 - strLen;
        n = ceil(n / 2);
        if (isRoom("rTransition1x") or isRoom("rTransition3x")) draw_text(n, 216, string_hash_to_newline("I NEED $" + string(global.tunnel1) + " FOR A NEW SHORTCUT."));
        else draw_text(n, 216, string_hash_to_newline("I NEED $" + string(global.tunnel2) + " FOR A NEW SHORTCUT."));
        draw_set_color(c_yellow);
        draw_text(n, 224, string_hash_to_newline("DONATE: " + string(oTunnelMan.donate)));
        draw_set_color(c_white);
    }
    else if (person.talk == 3)
    {
        strLen = string_length("THANKS! YOU WON'T REGRET IT!")*8;
        n = 320 - strLen;
        n = ceil(n / 2);
        draw_text(n, 216, string_hash_to_newline("THANKS! YOU WON'T REGRET IT!"));
    }
    else if (person.talk == 4)
    {
        strLen = string_length("I'LL NEVER GET THIS SHORTCUT BUILT!")*8;
        n = 320 - strLen;
        n = ceil(n / 2);
        draw_text(n, 216, string_hash_to_newline("I'LL NEVER GET THIS SHORTCUT BUILT!"));
    }
    else if (person.talk == 5)
    {
        strLen = string_length("ONE SHORTCUT, COMING UP!")*8;
        n = 320 - strLen;
        n = ceil(n / 2);
        draw_text(n, 216, string_hash_to_newline("ONE SHORTCUT, COMING UP!"));
    }
}
else if (instance_exists(oDamselKiss))
{
    person = instance_nearest(176, 176, oDamselKiss);
    if (person.kissed)
    {
        strLen = string_length("MY HERO!")*8;
        n = 320 - strLen;
        n = ceil(n / 2);
        draw_text(n, 216, string_hash_to_newline("MY HERO!"));
    }
}
/* debug
else
{
        draw_text(8, 208, string(debugCounter));
        if (global.genBlackMarket) draw_text(8, 216, "MARKET : " + string(drawLoot) + " :$ " + string(moneyCount) + " :$ " + string(global.xmoney) + " :A " + string(alarm[0]) + " :A " + string(alarm[1]));
}
*/

draw_set_color(c_yellow);
if (global.customLevel) draw_text(32, 48, string_hash_to_newline(global.customLevelName + " COMPLETED!"));
else if (global.currLevel-1 < 1) draw_text(32, 48, string_hash_to_newline("TUTORIAL CAVE COMPLETED!"));
else draw_text(32, 48, string_hash_to_newline("LEVEL " + string(global.currLevel-1) + " COMPLETED!"));
draw_set_color(c_white);
draw_text(32, 64, string_hash_to_newline("TIME  = "));
draw_text(32, 80, string_hash_to_newline("LOOT  = "));
draw_text(32, 96, string_hash_to_newline("KILLS = "));
draw_text(32, 112, string_hash_to_newline("MONEY = "));

if (drawLoot >= 1 and not isLoot)
{
    draw_text(96, 80, string_hash_to_newline("NONE"));
}

if (drawLoot > -2)
{
    s = global.xtime;
    s = floor(s / 1000);
    m = 0;
    while (s > 59)
    {
        s -= 60;
        m += 1;
    }
    
    // don't create a dark level if player is attempting a speed run
    if (s <= 20) global.noDarkLevel = true;
    else global.noDarkLevel = false;
    
    s2 = global.time;
    s2 = floor(s2 / 1000);
    m2 = 0;
    while (s2 > 59)
    {
        s2 -= 60;
        m2 += 1;
    }
    
    if (s < 10 and s2 < 10) draw_text(96, 64, string_hash_to_newline(string(m) + ":0" + string(s) + " / " + string(m2) + ":0" + string(s2)));
    else if (s < 10) draw_text(96, 64, string_hash_to_newline(string(m) + ":0" + string(s) + " / " + string(m2) + ":" + string(s2)));
    else if (s2 < 10) draw_text(96, 64, string_hash_to_newline(string(m) + ":" + string(s) + " / " + string(m2) + ":0" + string(s2)));
    else draw_text(96, 64, string_hash_to_newline(string(m) + ":" + string(s) + " / " + string(m2) + ":" + string(s2)));
}

if (drawLoot == 2)
{
    if (not isKills)
    {
        draw_text(96, 96, string_hash_to_newline("NONE"));
    }
    draw_text(96, 112, string_hash_to_newline("$" + string(moneyCount) + " / $" + string(global.money)));
}

/* */
/*  */
