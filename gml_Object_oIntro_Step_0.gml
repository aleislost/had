if (alarm[0] != -1)
    exit;

switch (phase)
{
    case 0:
        scr_screenshake(2);
        oBlackHole.phase = 0;
        phase++;
        
        with (oAlkuBall)
            scal_max = 1;
        
        with (oAlkuBall2)
            scal_max = 1;
        
        alarm[0] = room_speed * 6;
        break;
    
    case 1:
        scr_screenshake(2);
        scr_Sound(11);
        
        with (oCollectable_intro)
            collected = true;
        
        phase++;
        alarm[0] = room_speed * 4;
        break;
    
    case 2:
        with (oMenuPlayer)
        {
            instance_create_depth(x, y, depth, oPlayer);
            
            with (oPlayer)
            {
                scr_jump();
                intro = true;
            }
            
            instance_destroy();
        }
        
        phase++;
        alarm[0] = room_speed * 3;
        break;
    
    case 3:
        with (oPlayer)
        {
            draw_xscale = 0.75;
            draw_yscale = 1.25;
            sprite_index = sPlayer_up;
        }
        
        phase++;
        alarm[0] = room_speed * 2;
        break;
    
    case 4:
        scr_Sound(11);
        
        with (oPlayer)
        {
            instance_create_depth(x, y, depth, oPlayerIntro);
            instance_destroy();
        }
        
        scr_screenshake(2);
        phase++;
        break;
    
    case 5:
        if (!instance_exists(oPlayerIntro))
        {
            phase++;
            alarm[2] = room_speed * 2;
            alarm[1] = room_speed * 5;
        }
        
        break;
    
    case 6:
        with (oAlkuBall)
        {
            scal_max += 0.04;
            phase = 1;
            x = lerp(x, room_width / 2, 0.001);
            y = lerp(y, room_height / 2, 0.001);
        }
        
        with (oAlkuBall2)
        {
            scal_max += 0.04;
            phase = 1;
            x = lerp(x, room_width / 2, 0.001);
            y = lerp(y, room_height / 2, 0.001);
        }
        
        break;
}
