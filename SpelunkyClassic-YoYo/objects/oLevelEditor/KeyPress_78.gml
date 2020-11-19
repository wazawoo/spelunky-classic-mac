if (status == EXIT)
{
    global.titleStart = 2;
    if (file_exists("levels/test.tmp")) file_delete("levels/test.tmp");
    room_goto(rTitle);
}
else if (status == NEW)
{
    global.testLevel = "";
    room_restart();
}
