if (isRoom("rTutorial"))
{
    // do nothing
}
else if (global.darkLevel)
{
    if (global.hasCrown) global.message = "THE HEDJET SHINES BRIGHTLY.";
    else global.message = "I CAN'T SEE A THING!";
    if (global.hasCrown) global.message2 = "";
    else global.message2 = "I'D BETTER USE THESE FLARES!";
    global.messageTimer = 200;
    alarm[1] = 210;
}
else if (global.blackMarket)
{
    global.message = "WELCOME TO THE BLACK MARKET!";
    global.message2 = "";
    global.messageTimer = 200;
    alarm[1] = 210;
}
else if (global.snakePit)
{
    global.message = "I HEAR SNAKES... I HATE SNAKES!";
    global.message2 = "";
    global.messageTimer = 200;
}
else if (global.cemetary)
{
    global.message = "THE DEAD ARE RESTLESS!";
    global.message2 = "";
    global.messageTimer = 200;
    if (global.lake) alarm[1] = 210;
}
else if (global.lake)
{
    global.message = "I CAN HEAR RUSHING WATER...";
    global.message2 = "";
    global.messageTimer = 200;
}
else if (global.yetiLair)
{
    global.message = "IT SMELLS LIKE WET FUR IN HERE!";
    global.message2 = "";
    global.messageTimer = 200;
}
else if (global.alienCraft)
{
    global.message = "THERE'S A PSYCHIC PRESENCE HERE!";
    global.message2 = "";
    global.messageTimer = 200;
}
else if (global.cityOfGold)
{
    global.message = "IT'S THE LEGENDARY CITY OF GOLD!";
    global.message2 = "";
    global.messageTimer = 200;
    if (global.sacrificePit) alarm[1] = 210;
}
else if (global.sacrificePit)
{
    global.message = "I CAN HEAR PRAYERS TO KALI!";
    global.message2 = "";
    global.messageTimer = 200;
}
