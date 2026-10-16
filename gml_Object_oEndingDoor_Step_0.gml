if (alarm[0] != -1)
    exit;

switch (phase)
{
    case 0:
        image_yscale = scr_approach(image_yscale, 1, 0.01);
        
        if (image_yscale == 1)
        {
            phase++;
            alarm[0] = room_speed;
        }
        
        break;
    
    case 1:
        scr_Sound(0);
        scr_screenshake(2);
        instance_create_depth(x, y + 4, depth, oPlayer);
        
        with (oPlayer)
        {
            var _laps = instance_create_depth(x, y, depth - 1, oNamePartikle);
            _laps.xdir = -1;
            _laps.ydir = 1;
            _laps = instance_create_depth(x, y, depth - 1, oNamePartikle);
            _laps.xdir = 1;
            _laps.ydir = 1;
            _laps = instance_create_depth(x, y, depth - 1, oNamePartikle);
            _laps.xdir = -1;
            _laps.ydir = -1;
            _laps = instance_create_depth(x, y, depth - 1, oNamePartikle);
            _laps.xdir = 1;
            _laps.ydir = -1;
        }
        
        phase++;
        alarm[0] = room_speed * 2;
        alarm[2] = room_speed * 2;
        break;
    
    case 2:
        image_yscale = scr_approach(image_yscale, 0, 0.01);
        
        if (point_distance(oPlayer.x, oPlayer.y, oMailbox.x, oMailbox.y) < 12 && image_yscale == 0)
        {
            with (oPlayer)
            {
                scr_jump();
                intro = true;
                sprite_index = sPlayer;
            }
            
            alarm[1] = room_speed * 2;
            phase++;
        }
        
        break;
    
    case 3:
        oPlayer.x = lerp(oPlayer.x, oMailbox.x - 10, 0.1);
        oPlayer.y = lerp(oPlayer.y, oMailbox.y, 0.1);
        break;
    
    case 4:
        phase++;
        alarm[0] = room_speed;
        scr_Sound(0);
        instance_create_depth(oPlayer.x, oPlayer.y - 16, oPlayer.depth - 1, oEndLetter);
        oPlayer.sprite_index = sPlayer_win;
        oPlayer.draw_xscale = 0.75;
        oPlayer.draw_yscale = 1.25;
        break;
    
    case 5:
        if (!instance_exists(oEndLetter))
        {
            phase++;
            alarm[0] = room_speed * 2;
        }
        
        break;
    
    case 6:
        oPlayer.draw_xscale = 0.75;
        oPlayer.draw_yscale = 1.25;
        oPlayer.intro = false;
        alarm[0] = room_speed * 4;
        alarm[2] = room_speed * 4;
        phase++;
        break;
    
    case 7:
        x = 116;
        image_yscale = scr_approach(image_yscale, 1, 0.01);
        
        if (place_meeting(x, y + 4, oPlayer) && image_yscale == 1)
        {
            phase++;
            oPlayer.sprite_index = sPlayer_up;
            oPlayer.intro = true;
        }
        
        break;
    
    case 8:
        oPlayer.image_alpha = scr_approach(oPlayer.image_alpha, 0, 0.01);
        
        if (oPlayer.image_alpha == 0)
        {
            phase++;
            alarm[0] = room_speed * 2;
            alarm[2] = room_speed * 2;
        }
        
        break;
    
    case 9:
        image_yscale = scr_approach(image_yscale, 0, 0.01);
        
        if (image_yscale == 0)
        {
            phase++;
            alarm[0] = room_speed * 5;
        }
        
        break;
    
    case 10:
        oEndFade.alphe_goto = 2;
        phase++;
        break;
    
    case 11:
        if (oEndFade.alphe == 2)
            room_goto(rCredits);
        
        break;
}
