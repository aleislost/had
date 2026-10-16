if (alarm[0] != -1)
    exit;

switch (phase)
{
    case 0:
        oPlayerFin.image_xscale = 0.75;
        oPlayerFin.image_yscale = 1.25;
        oPlayerFin.sprite_index = sPlayer;
        alarm[0] = room_speed;
        phase++;
        alarm[3] = room_speed;
        break;
    
    case 1:
        if (amo < 8)
        {
            amo++;
            var _laps = instance_create_depth(room_width / 2, -16, depth, oCollectable_end);
            _laps.xbonus = (amo / 4) * pi;
        }
        else
        {
            phase++;
            alarm[1] = room_speed * 7;
        }
        
        break;
    
    case 2:
        with (oCollectable_end)
            away = scr_approach(away, 0, 0.5);
        
        break;
    
    case 3:
        scr_Sound(0);
        oPlayerFin.image_xscale = 0.75;
        oPlayerFin.image_yscale = 1.25;
        oPlayerFin.sprite_index = sPlayer_win;
        oPlayerFin.image_speed = 0;
        oPlayerFin.image_index = 2;
        instance_create_depth(oPlayerFin.x, oPlayerFin.y - 16, depth + 100, oEndLetter_1);
        phase++;
        alarm[0] = room_speed * 2;
        break;
    
    case 4:
        scr_Sound(0);
        oEndLetter_1.sprite_index = sEnvelope_2;
        oEndLetter_1.image_xscale = 2;
        oEndLetter_1.image_yscale = 2;
        phase++;
        alarm[0] = room_speed * 2;
        alarm[2] = room_speed * 2;
        break;
    
    case 5:
        with (oCollectable_end)
            collected = true;
        
        phase++;
        break;
    
    case 6:
        with (oCollectable_end)
        {
            away = scr_approach(away, -64, 0.5);
            
            if (away == -64)
                instance_destroy();
        }
        
        if (!instance_exists(oCollectable_end))
        {
            oEndLetter_1.image_xscale = 2;
            oEndLetter_1.image_yscale = 2;
            alarm[0] = room_speed;
            scr_Sound(0);
            phase++;
        }
        
        break;
    
    case 7:
        scr_Sound(0);
        oEndLetter_1.sprite_index = sEnvelope;
        oEndLetter_1.image_xscale = 2;
        oEndLetter_1.image_yscale = 2;
        alarm[0] = room_speed;
        phase++;
        break;
    
    case 8:
        scr_Sound(0);
        scr_safedestroy(69);
        oPlayerFin.image_xscale = 0.75;
        oPlayerFin.image_yscale = 1.25;
        oPlayerFin.sprite_index = sPlayer;
        oPlayerFin.image_speed = 1;
        alarm[0] = room_speed;
        phase++;
        break;
    
    case 9:
        with (oPlayerFin)
        {
            instance_create_depth(x, y, depth, oPlayer);
            oPlayer.draw_xscale = 1;
            oPlayer.draw_yscale = 1;
            instance_destroy();
        }
        
        alarm[0] = room_speed;
        alarm[4] = room_speed;
        phase++;
        break;
    
    case 10:
        with (oEndingDoor2)
            image_yscale = scr_approach(image_yscale, 1, 0.01);
        
        if (oEndingDoor2.image_yscale == 1)
            phase++;
        
        break;
    
    case 11:
        if (place_meeting(oEndingDoor2.x, oEndingDoor2.y + 4, oPlayer))
        {
            phase++;
            oPlayer.sprite_index = sPlayer_up;
            oPlayer.intro = true;
        }
        
        break;
    
    case 12:
        oPlayer.image_alpha = scr_approach(oPlayer.image_alpha, 0, 0.01);
        
        if (oPlayer.image_alpha == 0)
        {
            phase++;
            alarm[0] = room_speed * 2;
            alarm[4] = room_speed * 2;
        }
        
        break;
    
    case 13:
        with (oEndingDoor2)
            image_yscale = scr_approach(image_yscale, 0, 0.01);
        
        if (oEndingDoor2.image_yscale == 0)
        {
            phase++;
            alarm[0] = room_speed;
        }
        
        break;
    
    case 14:
        room_goto_next();
        break;
}
