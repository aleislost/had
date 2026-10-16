switch (phase)
{
    case 0:
        break;
    
    case 1:
        if (!place_meeting(x, y, oPlayer) || oPlayer.z < 0)
        {
            var laps = instance_create_depth(x, y, 300, oDestroAnim);
            laps.image_index = 1;
            laps.partikle = true;
            laps = instance_create_depth(x, y, depth, oDestroAnim);
            laps.image_index = 2;
            x = -16;
            y = -16;
            phase = 3;
        }
        
        break;
}

draw_xscale = scr_approach(draw_xscale, 1, 0.025);
draw_yscale = scr_approach(draw_yscale, 1, 0.025);
