if (z < 0.1 && instance_exists(other._laps) && other._laps.collected == false && !win)
{
    with (oGoal)
        cur++;
    
    with (oCollectFrame)
    {
        image_index = ide <= oGoal.cur;
        
        if (ide == oGoal.cur)
        {
            image_xscale = 1.5;
            image_angle = random_range(-16, 16);
        }
    }
    
    other._laps.collected = true;
    scr_Sound(1);
}
