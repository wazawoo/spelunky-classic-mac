if (status == 0)
{
    x -= 1;
    if (x <= 160)
    {
        playMusic(global.musCredits, false);
        status = 1;
    }
}
else if (status == 1)
{
    x -= 0.01;
}
else if (status == 2)
{
    x -= 2;
}

if (isRoom("rCredits1") and x < -64) oCredits1.fadeOut = true;
