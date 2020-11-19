//if global.gamepadOn{}

joyid=0        
startReleased = false;
startPressed = false;
leftReleased = false;
leftPressed = false;
rightReleased = false;
rightPressed = false;
upReleased = false;
upPressed = false;
downReleased = false;
downPressed = false;
jump_button=true;
jumpReleased = false;
jumpPressed = false;
attackReleased = false;
attackPressed = false;
itemReleased = false;
itemPressed = false;
bombReleased = false;
bombPressed = false;
ropeReleased = false;
ropePressed = false;
flareReleased = false;
flarePressed = false;
payReleased = false;
payPressed = false;

jump_button = false;
attack_button = false;
item_button = false;
left_button = false;
right_button = false;
up_button = false;
down_button = false;
start_button = false;

var i=0;
for(var i=0;i<4;i++)
{
    if gamepad_is_connected(i)
    {
        if( gamepad_button_check(i, gp_start ) ) start_button=true;
        if( gamepad_button_check(i, gp_face1 ) ) jump_button=true;
        if( gamepad_button_check(i, gp_face2 ) ) attack_button=true;
        if( gamepad_button_check(i, gp_face3 ) ) item_button=true;       
    }
}


i=0;
{
    if (start)
    {       
        if(start_button){
            start=true;
        }else{
            start=false;
            startReleased=true;
        }
    }
    else
    {       
        if(start_button){
            start=true;
            startPressed=true;
        }else{
            start=false;
        }
    }
    
    /////////////
    // LEFT
    /////////////
    
    if (left)
    {
        if ((joystick_has_pov(joyid) == 1 and joystick_pov(joyid) == 270) or joystick_direction(joyid) == 100) left = true;
        else left = false;
        if (not left) leftReleased = true;
    }
    else
    {
        if ((joystick_has_pov(joyid) == 1 and joystick_pov(joyid) == 270) or joystick_direction(joyid) == 100) left = true;
        else left = false;
        if (left) leftPressed = true;
    }
    
    /////////////
    // RIGHT
    /////////////
    
    if (right)
    {
        if ((joystick_has_pov(joyid) == 1 and joystick_pov(joyid) == 90) or joystick_direction(joyid) == 102) right = true;
        else right = false;
        if (not right) rightReleased = true;
    }
    else
    {
        if ((joystick_has_pov(joyid) == 1 and joystick_pov(joyid) == 90) or joystick_direction(joyid) == 102) right = true;
        else right = false;
        if (right) rightPressed = true;
    }
    
    /////////////
    // UP
    /////////////
    
    if (up)
    {
        if ((joystick_has_pov(joyid) == 1 and joystick_pov(joyid) == 0) or joystick_direction(joyid) == 104) up = true;
        else up = false;
        if (not up) upReleased = true;
    }
    else
    {
        if ((joystick_has_pov(joyid) == 1 and joystick_pov(joyid) == 0) or joystick_direction(joyid) == 104) up = true;
        else up = false;
        if (up) upPressed = true;
    }
    
    /////////////
    // DOWN
    /////////////
    
    if (down)
    {
        if ((joystick_has_pov(joyid) == 1 and joystick_pov(joyid) == 180) or joystick_direction(joyid) == 98) down = true;
        else down = false;
        if (not down) downReleased = true;
    }
    else
    {
        if ((joystick_has_pov(joyid) == 1 and joystick_pov(joyid) == 180) or joystick_direction(joyid) == 98) down = true;
        else down = false;
        if (down) downPressed = true;
    }
    
    /////////////
    // DIAGONAL
    /////////////
    
    if ((joystick_has_pov(joyid) == 1 and joystick_pov(joyid) == 45) or joystick_direction(joyid) == 105)
    {
        right = true;
        up = true;
    }
    
    if ((joystick_has_pov(joyid) == 1 and joystick_pov(joyid) == 135) or joystick_direction(joyid) == 99)
    {
        right = true;
        down = true;
    }
    
    if ((joystick_has_pov(joyid) == 1 and joystick_pov(joyid) == 225) or joystick_direction(joyid) == 97)
    {
        left = true;
        down = true;
    }
    
    if ((joystick_has_pov(joyid) == 1 and joystick_pov(joyid) == 315) or joystick_direction(joyid) == 103)
    {
        left = true;
        up = true;
    }
    
    /////////////
    // JUMP
    /////////////
    
    if(jump)
    {
        if(jump_button ){
            jump = true;
        }else{
            jump = false;
            jumpReleased=true;
        }
    }
    else
    {
        if(jump_button ){
            jump = true;
            jumpPressed=true;
        }else{
            jump = false;
        }
    }
    
    /////////////
    // ATTACK
    /////////////
    
    if (attack)
    {
        if( attack_button ){
            attack=true;
        }else{
            attack=false;
            attackReleased=true;
        }
    }
    else
    {
        if( attack_button ){
            attack=true;
            attackPressed=true;
        }else{
            attack=false;
        }
    }
    
    ////////////
    // ITEM
    ////////////
    
    if (item)
    {
        if( item_button ){
            item=true;
        }else{
            item=false;
            itemReleased=true;
        }
    }
    else
    {
        if( item_button ){
            item=true;
            itemPressed=true;
        }else{
            item=false;
        }
    }
    
    
    ////////////
    // RUN
    ////////////
    
    if (global.joyRunVal > 0)
        run = joystick_check_button(joyid,global.joyRunVal);
    else if (global.joyRunVal == -1)
    {
        if (joystick_zpos(joyid) > 0.1) run = true;
        else run = false;
    }
    else if (global.joyRunVal == -2)
    {
        if (joystick_zpos(joyid) < -0.1) run = true;
        else run = false;
    }
    
    ////////////
    // BOMB
    ////////////
    
    if (bomb)
    {
        if( gamepad_button_check_pressed(i, gp_face4 ) ){
            bomb = true;
        }        
        if (global.joyBombVal > 0)
            bomb = joystick_check_button(joyid,global.joyBombVal);
        else if (global.joyBombVal == -1)
        {
            if (joystick_zpos(joyid) > 0.1) bomb = true;
            else bomb = false;
        }
        else if (global.joyBombVal == -2)
        {
            if (joystick_zpos(joyid) < -0.1) bomb = true;
            else bomb = false;
        }
        
        if (not bomb) bombReleased = true;
    }
    else
    {
        if (global.joyBombVal > 0)
            bomb = joystick_check_button(joyid,global.joyBombVal);
        else if (global.joyBombVal == -1)
        {
            if (joystick_zpos(joyid) > 0.1) bomb = true;
            else bomb = false;
        }
        else if (global.joyBombVal == -2)
        {
            if (joystick_zpos(joyid) < -0.1) bomb = true;
            else bomb = false;
        }
        
        if (bomb) bombPressed = true;
    }
    
    ////////////
    // ROPE
    ////////////
    
    if (rope)
    {
        if (global.joyRopeVal > 0)
            rope = joystick_check_button(joyid,global.joyRopeVal);
        else if (global.joyRopeVal == -1)
        {
            if (joystick_zpos(joyid) > 0.1) rope = true;
            else rope = false;
        }
        else if (global.joyRopeVal == -2)
        {
            if (joystick_zpos(joyid) < -0.1) rope = true;
            else rope = false;
        }
        
        if (not rope) ropeReleased = true;
    }
    else
    {
        if (global.joyRopeVal > 0)
            rope = joystick_check_button(joyid,global.joyRopeVal);
        else if (global.joyRopeVal == -1)
        {
            if (joystick_zpos(joyid) > 0.1) rope = true;
            else rope = false;
        }
        else if (global.joyRopeVal == -2)
        {
            if (joystick_zpos(joyid) < -0.1) rope = true;
            else rope = false;
        }
        
        if (rope) ropePressed = true;
    }
    
    ////////////
    // FLARE
    ////////////
    
    if (flare)
    {
        if (global.joyFlareVal > 0)
            flare = joystick_check_button(joyid,global.joyFlareVal);
        else if (global.joyFlareVal == -1)
        {
            if (joystick_zpos(joyid) > 0.1) flare = true;
            else flare = false;
        }
        else if (global.joyFlareVal == -2)
        {
            if (joystick_zpos(joyid) < -0.1) flare = true;
            else flare = false;
        }
        
        if (not flare) flareReleased = true;
    }
    else
    {
        if (global.joyFlareVal > 0)
            flare = joystick_check_button(joyid,global.joyFlareVal);
        else if (global.joyFlareVal == -1)
        {
            if (joystick_zpos(joyid) > 0.1) flare = true;
            else flare = false;
        }
        else if (global.joyFlareVal == -2)
        {
            if (joystick_zpos(joyid) < -0.1) flare = true;
            else flare = false;
        }
        
        if (flare) flarePressed = true;
    }
    
    ////////////
    // PAY
    ////////////
    
    if (pay)
    {
        if (global.joyPayVal > 0)
            pay = joystick_check_button(joyid,global.joyPayVal);
        else if (global.joyPayVal == -1)
        {
            if (joystick_zpos(joyid) > 0.1) pay = true;
            else pay = false;
        }
        else if (global.joyPayVal == -2)
        {
            if (joystick_zpos(joyid) < -0.1) pay = true;
            else pay = false;
        }
        
        if (not pay) payReleased = true;
    }
    else
    {
       if (global.joyPayVal > 0)
            pay = joystick_check_button(joyid,global.joyPayVal);
        else if (global.joyPayVal == -1)
        {
            if (joystick_zpos(joyid) > 0.1) pay = true;
            else pay = false;
        }
        else if (global.joyPayVal == -2)
        {
            if (joystick_zpos(joyid) < -0.1) pay = true;
            else pay = false;
        }
        
        if (pay) payPressed = true;
    }
}



