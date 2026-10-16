if (alarm[0] != -1)
    exit;

var _mod = oGame.dKey_pressed - oGame.uKey_pressed;
var _set = oGame.rKey_pressed - oGame.lKey_pressed;
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
    oMenuArrow.image_xscale = 2;
}

if (_set != 0)
{
    switch (menu[index])
    {
        case "full":
            window_set_fullscreen(true - (2 * window_get_fullscreen()));
            
            if (window_get_fullscreen())
                set[index] = "x";
            else
                set[index] = "o";
            
            break;
        
        case "size":
            oGame.size = clamp(oGame.size + _set, 1, 5);
            window_set_size(192 * oGame.size, 192 * oGame.size);
            set[index] = "";
            
            for (var o = 0; o < 5; o++)
            {
                if (o < oGame.size)
                    set[index] += "x";
                else
                    set[index] += "o";
            }
            
            break;
        
        case "sfx":
            oGame.sfx = clamp(oGame.sfx + _set, 0, 5);
            set[index] = "";
            
            for (var o = 0; o < 5; o++)
            {
                if (o < oGame.sfx)
                    set[index] += "x";
                else
                    set[index] += "o";
            }
            
            break;
        
        case "music":
            oGame.music = clamp(oGame.music + _set, 0, 5);
            
            with (oGame)
                music_change = true;
            
            set[index] = "";
            
            for (var o = 0; o < 5; o++)
            {
                if (o < oGame.music)
                    set[index] += "x";
                else
                    set[index] += "o";
            }
            
            break;
        
        case "return":
            oMenu.alarm[0] = room_speed * 0.2;
            
            with (oMenu)
            {
                oMenuArrow.goto_y = y + (index * 16) + 4;
                oMenuArrow.goto_x = x - (string_length(menu[index]) * 5) - 2;
            }
            
            instance_destroy();
            break;
    }
    
    scr_Sound(8);
}

if (_act)
{
    switch (menu[index])
    {
        case "full":
            window_set_fullscreen(true - (2 * window_get_fullscreen()));
            
            if (window_get_fullscreen())
                set[index] = "x";
            else
                set[index] = "o";
            
            break;
        
        case "return":
            oMenu.alarm[0] = room_speed * 0.2;
            
            with (oMenu)
            {
                oMenuArrow.goto_y = y + (index * 16) + 4;
                oMenuArrow.goto_x = x - (string_length(menu[index]) * 5) - 2;
            }
            
            instance_destroy();
            break;
    }
}
