switch (phase)
{
    case 0:
        break;
    
    case 1:
        pressed = !pressed;
        
        if (pressed)
            scr_sound(soBUTTON);
        else
            scr_sound(soBUTTONOFF);
        
        phase = 2;
        
        if (instance_exists(oDoorDoor))
        {
            with (oDoorDoor)
            {
                switch (phase)
                {
                    case 0:
                        check = true;
                        
                        with (oButton)
                        {
                            if (!pressed)
                                oDoorDoor.check = false;
                        }
                        
                        if (check == true)
                        {
                            phase = 1;
                            y = start_y + sprite_height;
                            scr_sound(soDOOROPEN);
                        }
                        
                        break;
                    
                    case 1:
                        check = true;
                        
                        with (oButton)
                        {
                            if (!pressed)
                                oDoorDoor.check = false;
                        }
                        
                        if (check == false)
                        {
                            phase = 0;
                            y = start_y;
                            scr_sound(soDOORCLOSE);
                        }
                        
                        break;
                }
            }
        }
        
        break;
    
    case 2:
        if (!place_meeting(x, y, oPlayer) && oPlayer.z == 0)
            phase = 0;
        
        break;
}
