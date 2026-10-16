image_angle = sin(current_time * 0.005) * 16;

if (alarm[0] != -1)
    exit;

switch (phase)
{
    case 0:
        image_xscale = scr_approach(image_xscale, 1, 0.1);
        image_yscale = image_xscale;
        
        if (image_xscale == 1)
        {
            phase++;
            alarm[0] = room_speed * 2;
            alarm[1] = room_speed * 2.25;
        }
        
        break;
    
    case 1:
        x = lerp(x, oMailbox.x, 0.1);
        y = lerp(y, oMailbox.y - 8, 0.1);
        
        if (alarm[1] == -1)
        {
            phase++;
            scr_Sound(0);
            oMailbox.draw_xscale = 0.5;
            oMailbox.draw_yscale = 1.5;
            instance_destroy();
        }
        
        break;
}
