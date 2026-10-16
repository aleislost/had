if (oGame.pause)
    exit;

depth = start_depth - y;
var xKey, yKey;

if (!win)
{
    if (!intro)
    {
        xKey = oGame.rKey - oGame.lKey;
        yKey = oGame.dKey - oGame.uKey;
    }
    else
    {
        xKey = 0;
        yKey = 0;
    }
}
else
{
    xKey = 0;
    yKey = 0;
}

switch (phase)
{
    case "MOVER":
        draw_angle = lerp(draw_angle, 0, 0.1);
        
        if (oGame.jKey_pressed && alarm[0] == -1)
        {
            phase = "WALK";
            
            with (oMover)
            {
                if (hold)
                {
                    hold = false;
                    
                    if (destro)
                    {
                        destroyed = true;
                        x = -16;
                        y = -16;
                    }
                }
            }
            
            scr_jump();
        }
        
        draw_xscale = scr_approach(draw_xscale, 1, 0.025);
        draw_yscale = scr_approach(draw_yscale, 1, 0.025);
        break;
    
    case "WALK":
        if (!jump)
            zVel += grav;
        
        z += zVel;
        
        if (z >= 0)
        {
            if (place_meeting(x, y, oGround))
            {
                if (!jump)
                {
                    instance_place(x, y, oGround).draw_scale = 1.25;
                    
                    if (!audio_is_playing(soLAND))
                        scr_Sound(12);
                    
                    z = 0;
                    zVel = 0;
                    jump = true;
                    draw_xscale = 1.33;
                    draw_yscale = 0.66;
                }
            }
            else if (z > zmax || y > room_height)
            {
                scr_death_fall();
            }
        }
        
        if (oGame.jKey_pressed && jump && z == 0 && !win)
            scr_jump();
        
        if (xKey != 0 || yKey != 0)
        {
            if (!audio_is_playing(soWALK) && z == 0)
                scr_Sound(15);
            
            if (alarm[1] == -1)
                alarm[1] = room_speed * 0.1;
            
            var dir = point_direction(0, 0, xKey, yKey);
            xVel = dcos(dir) * spd;
            yVel = -dsin(dir) * spd;
            
            if (yKey != 0)
                face = yKey;
            else
                face = 1;
            
            if ((place_meeting(x + xVel, y, oGround) || !jump) && !place_meeting(x + xVel, y, oWall))
                x += xVel;
            
            if ((place_meeting(x, y + yVel, oGround) || !jump) && !place_meeting(x, y + yVel, oWall))
                y += yVel;
            
            draw_angle = lerp(draw_angle, sin(current_time * 0.0125) * 24, 0.1);
            
            if (win == false && !intro)
            {
                switch (face)
                {
                    case 1:
                        sprite_index = sPlayer;
                        break;
                    
                    case -1:
                        sprite_index = sPlayer_up;
                        break;
                }
            }
            else if (!intro)
            {
                sprite_index = sPlayer_win;
            }
        }
        else
        {
            draw_angle = lerp(draw_angle, 0, 0.1);
            
            if (!win && !intro)
                sprite_index = sPlayer;
            else if (!intro)
                sprite_index = sPlayer_win;
        }
        
        draw_xscale = scr_approach(draw_xscale, 1, 0.025);
        draw_yscale = scr_approach(draw_yscale, 1, 0.025);
        break;
}
