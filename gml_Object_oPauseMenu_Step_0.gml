if (alarm[0] != -1 || instance_exists(oSettings))
    exit;

var _mod = oGame.dKey_pressed - oGame.uKey_pressed;
var _act = oGame.jKey_pressed;

if (_mod != 0)
{
    scr_Sound(14);
    index += _mod;
    
    if (index >= array_length(menu))
        index = 0;
    else if (index < 0)
        index = array_length(menu) - 1;
    
    oMenuArrow.goto_y = y + (index * 16) + 4;
    oMenuArrow.goto_x = x - (string_length(menu[index]) * 5) - 2;
    oMenuArrow.image_xscale = 2;
}

if (_act)
{
    scr_Sound(8);
    
    switch (menu[index])
    {
        case "continue":
            scr_pause();
            break;
        
        case "settings":
            instance_create_depth(x - 16, y, depth - 5, oSettings);
            break;
        
        case "menu":
            oGame.pause = false;
            room_goto(rMenu);
            break;
        
        case "skip":
            oGame.pause = false;
            room_goto_next();
            break;
    }
}
