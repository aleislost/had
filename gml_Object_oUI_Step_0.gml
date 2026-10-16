if (alarm[0] != -1)
    exit;

switch (phase)
{
    case 0:
        image_alpha = scr_approach(image_alpha, 0, amo);
        
        if (image_alpha == 0)
            instance_destroy();
        
        break;
    
    case 1:
        image_alpha = scr_approach(image_alpha, 1, 0.015);
        
        if (image_alpha == 1)
        {
            scr_Sound(2);
            
            if (instance_exists(oCollectable))
            {
                with (oCollectable)
                {
                    if (win != true)
                    {
                        win = true;
                        image_alpha = 1.15;
                    }
                }
            }
            
            image_speed = 0;
            image_index = 0;
            alarm[0] = room_speed * 1.75;
        }
        
        if (instance_exists(oPlayer))
        {
            oPlayer.x = lerp(oPlayer.x, room_width / 2, 0.1);
            oPlayer.y = lerp(oPlayer.y, room_height / 2, 0.1);
        }
        
        break;
    
    case 2:
        if (room != rFinalLevel)
        {
            alphe = scr_approach(alphe, -0.5, 0.025);
            
            if (alphe == -0.5)
                room_goto_next();
        }
        else
        {
            room_goto(rEnd1);
        }
        
        break;
}
