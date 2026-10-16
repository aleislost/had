_xx = x;
_yy = y;

if (alarm[0] == -1 && (destro || activated))
{
    xx_goto = scr_approach(xx_goto, suunt[phase][0], spd);
    yy_goto = scr_approach(yy_goto, suunt[phase][1], spd);
}

if (xx_goto == suunt[phase][0] && yy_goto == suunt[phase][1])
{
    alarm[0] = room_speed * 0.5;
    
    if (!destroyed)
        scr_sound(soMOVESTOP);
    
    phase++;
    
    if (phase >= array_length(suunt))
    {
        activated = false;
        phase = 0;
    }
}

if (!destroyed)
{
    x = xx_goto;
    y = yy_goto;
    
    if (hold)
    {
        oPlayer.x = x;
        oPlayer.y = y;
    }
}
