if (facing == RIGHT) image_xscale = -1;
else image_xscale = 1;

if ((sprite_index == sPExit or sprite_index == sDamselExit or sprite_index == sTunnelExit) and global.hasJetpack)
{
    draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    draw_sprite(sJetpackBack,-1,x,y);
}
else if (sprite_index == sPExit or sprite_index == sDamselExit or sprite_index == sTunnelExit)
{
    draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
else if (global.hasJetpack)
{
    draw_sprite(sJetpackRight,-1,x-4,y-1);
}

if (sprite_index != sPExit and sprite_index != sDamselExit and sprite_index != sTunnelExit)
{
    draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    if (global.pickupItem == "Rock") holdItem = draw_sprite(sRock,-1,x+4,y+2);
    else if (global.pickupItem == "Jar") holdItem = draw_sprite(sJar,-1,x+4,y+2);
    else if (global.pickupItem == "Skull") holdItem = draw_sprite(sSkull,-1,x+4,y+2);
    else if (global.pickupItem == "Fish Bone") holdItem = draw_sprite(sFishBone,-1,x+4,y+2);
    else if (global.pickupItem == "Arrow") holdItem = draw_sprite(sArrowRight,-1,x+4,y+2);
    else if (global.pickupItem == "Rock") holdItem = draw_sprite(sRock,-1,x+4,y+2);
    else if (global.pickupItem == "Machete") holdItem = draw_sprite(sMacheteRight,-1,x+4,y+2);
    else if (global.pickupItem == "Mattock") holdItem = draw_sprite(sMattockRight,-1,x+4,y+2);
    else if (global.pickupItem == "Mattock Head") holdItem = draw_sprite(sMattockHead,-1,x+4,y+2);
    else if (global.pickupItem == "Pistol") holdItem = draw_sprite(sPistolRight,-1,x+4,y+2);
    else if (global.pickupItem == "Web Cannon") holdItem = draw_sprite(sWebCannonR,-1,x+4,y+2);
    else if (global.pickupItem == "Teleporter") holdItem = draw_sprite(sTeleporter,-1,x+4,y+2);
    else if (global.pickupItem == "Shotgun") holdItem = draw_sprite(sShotgunRight,-1,x+4,y+2);
    else if (global.pickupItem == "Bow") holdItem = draw_sprite(sBowRight,-1,x+4,y+2);
    else if (global.pickupItem == "Flare") holdItem = draw_sprite(sFlare,-1,x+4,y+2);
    else if (global.pickupItem == "Sceptre") holdItem = draw_sprite(sSceptreRight,-1,x+4,y+2);
    else if (global.pickupItem == "Key") holdItem = draw_sprite(sKeyRight,-1,x+4,y+2);
}
