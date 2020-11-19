type = "Message Sign";

// tutorial cave init
if (isRoom("rLevelEditor") or isRoom("rLoadLevel"))
{
    message = "";
    message2 = "";
}
else if (x == 32 and y == 64)
{
    message = "WELCOME TO THE TUTORIAL CAVE!";
    message2 = "THIS MIGHT BE YOUR FIRST TIME PLAYING.";

}
else if (x == 80 and y == 96)
{
    if (global.gamepadOn) message = "PRESS " + scrGetJoy(global.joyJumpVal) + " TO JUMP.";
    else message = "PRESS " + scrGetKey(global.keyJumpVal) + " TO JUMP.";
    message2 = "";

}
else if (x == 176 and y == 96)
{
    message = "YOU CAN HANG ON LEDGES, TOO!";
    message2 = "";

}
else if (x == 240 and y == 64)
{
    if (global.gamepadOn) message = "PRESS " + scrGetJoy(global.joyAttackVal) + " TO USE YOUR WHIP.";
    else message = "PRESS " + scrGetKey(global.keyAttackVal) + " TO USE YOUR WHIP.";
    message2 = "";

}
else if (x == 384 and y == 96)
{
    message = "COLLECT THE TREASURE!";
    message2 = "";

}
else if (x == 512 and y == 32)
{
    if (global.gamepadOn) message = "HOLD UP AND PRESS " + scrGetJoy(global.joyAttackVal) + " TO OPEN CHESTS.";
    else message = "HOLD UP AND PRESS " + scrGetKey(global.keyAttackVal) + " TO OPEN CHESTS.";
    message2 = "";

}
else if (x == 544 and y == 112)
{
    message = "HOLD DOWN TO DUCK AND CRAWL.";
    message2 = "";

}
else if (x == 576 and y == 128)
{
    message = "CRAWL OVER THE EDGE TO DO A FLIP HANG.";
    message2 = "FALLING TOO FAR CAN REALLY HURT!";

}
else if (x == 640 and y == 96)
{
    message = "HOLD UP TO CLIMB THE LADDER.";
    message2 = "";

}
else if (x == 608 and y == 256)
{
    if (global.gamepadOn) message = "DUCK AND PRESS " + scrGetJoy(global.joyAttackVal) + " TO PICK UP ITEMS.";
    else message = "DUCK AND PRESS " + scrGetKey(global.keyAttackVal) + " TO PICK UP ITEMS.";
    message2 = "";

}
else if (x == 576 and y == 256)
{
    if (global.gamepadOn) message = "PRESS " + scrGetJoy(global.joyAttackVal) + " TO THROW OR USE ITEMS.";
    else message = "PRESS " + scrGetKey(global.keyAttackVal) + " TO THROW OR USE ITEMS.";
    message2 = "HOLD UP TO THROW HIGH AND DOWN TO DROP.";

}
else if (x == 496 and y == 256)
{
    if (global.gamepadOn) message = "PRESS " + scrGetJoy(global.joyItemVal) + " TO SELECT YOUR ROPE AND";
    else message = "PRESS " + scrGetKey(global.keyItemVal) + " TO SELECT YOUR ROPE AND";
    if (global.gamepadOn) message2 = scrGetJoy(global.joyAttackVal) + " TO USE IT.";
    else message2 = scrGetKey(global.keyAttackVal) + " TO USE IT.";

}
else if (x == 432 and y == 176)
{
    if (global.gamepadOn) message = "CROUCH AND PRESS " + scrGetJoy(global.joyAttackVal);
    else message = "CROUCH AND PRESS " + scrGetKey(global.keyAttackVal);
    message2 = "TO THROW A ROPE DOWN A LEDGE.";

}
else if (x == 384 and y == 208)
{
    if (global.gamepadOn) message = "TO RUN, HOLD DOWN " + scrGetJoy(global.joyAttackVal) + " OR " + scrGetJoy(global.joyRunVal) + ".";
    else message = "TO RUN, HOLD DOWN " + scrGetKey(global.keyAttackVal) + " OR " + scrGetKey(global.keyRunVal) + ".";
    message2 = "";
}
else if (x == 256 and y == 208)
{
    message = "OPEN THIS CRATE FOR A BAG OF BOMBS.";
    message2 = "";

}
else if (x == 224 and y == 208)
{
    if (global.gamepadOn) message = "PRESS " + scrGetJoy(global.joyItemVal) + " TO SELECT BOMBS AND ";
    else message = "PRESS " + scrGetKey(global.keyItemVal) + " TO SELECT BOMBS AND ";
    if (global.gamepadOn) message2 =  "PRESS " + scrGetJoy(global.joyAttackVal) + " TO USE IT.";
    else message2 =  "PRESS " + scrGetKey(global.keyAttackVal) + " TO USE IT.";

}
else if (x == 96 and y == 256)
{
    message = "THERE'S LOTS MORE AHEAD!";
    message2 = "USE YOUR WITS AND BEWARE OF TRAPS!";

}
