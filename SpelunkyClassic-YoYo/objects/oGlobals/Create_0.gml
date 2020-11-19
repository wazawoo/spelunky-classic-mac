// gamepad

globalvar joyid;

joyid = 1;

if (not joystick_exists(1) and joystick_exists(2)) joyid = 2;

//

ini_open("spelunky.ini")

global.levelSelect = 0; //DEBUG

global.customLevel = false;
global.testLevel = "";

global.firstTime = false;
global.usedShortcut = false;

global.darkLevel = false;
global.lake = false;

global.music = true;
global.message = "";
global.message2 = "";
global.messageTimer = 0;
global.darknessLerp = 0;
global.hadDarkLevel = false;

global.udjatBlink = false;
global.udjatCounter = 0;

global.cleanSolids = false;

// Tunnel Man
global.tunnel1Max = 100000;
global.tunnel2Max = 200000;
global.tunnel3Max = 300000;
global.tunnel1 = ini_read_real("highscore","value8",0);
global.tunnel2 = ini_read_real("highscore","value9",0);

// Minigames
global.mini1 = 0;
global.mini2 = 0;
global.mini3 = 0;
global.scoresStart = 0;
global.isDamsel = false;
global.isTunnelMan = false;

// Highscores
global.newMoney = false;
global.newKills = false;
global.newSaves = false;
global.newTime = false;

scrClearGlobals();

if (ini_read_real("highscore","value1",0) <= 0 and
    ini_read_real("highscore","value2",0) <= 0 and
    ini_read_real("highscore","value3",0) <= 0 and
    ini_read_real("highscore","value4",0) <= 0 and
    ini_read_real("highscore","value5",0) <= 0 and
    ini_read_real("highscore","value6",0) <= 0 and
    ini_read_real("highscore","value7",0) <= 0 and
    ini_read_real("highscore","value8",0) <= 0 and
    ini_read_real("highscore","value9",0) <= 0)
{
    ini_close()
    scrResetHighscores();
    global.firstTime = true;
}
else
{
    ini_close()
}



