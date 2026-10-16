function scr_death_hit(arg0)
{
    scr_Sound(7);
    var _suunt = choose(-1, 1);
    
    if (place_meeting(bbox_right, y, arg0))
        _suunt = 1;
    else if (place_meeting(bbox_left, y, arg0))
        _suunt = -1;
    
    scr_screenshake(2);
    var laps = instance_create_depth(x, y, depth - 1, oPlayerHit);
    laps.dir = _suunt;
    laps.image_angle = random_range(8, 16) * _suunt;
    
    if (instance_exists(oCollectable))
    {
        with (oCollectable)
        {
            if (collected)
            {
                laps = instance_create_depth(x, (y + draw_y) - 5, depth - 1, oCollectableDeath);
                laps.dir = _suunt;
                laps.image_angle = random_range(8, 16) * _suunt;
                instance_destroy();
            }
        }
    }
    
    oPlayer.alarm[2] = room_speed * 0.1;
    x = start_x;
    y = start_y;
    draw_xscale = 0;
    draw_yscale = 0;
    z = 0;
    zVel = 0;
    jump = true;
}

function scr_death_fall()
{
    scr_Sound(9);
    var laps = instance_create_depth(x, y, depth - 1, oPlayerFall);
    laps.sprite_index = sprite_index;
    laps.image_index = image_index;
    laps.image_angle = image_angle;
    
    if (instance_exists(oCollectable))
    {
        with (oCollectable)
        {
            if (collected)
            {
                laps = instance_create_depth(x, (y + draw_y) - 5, depth - 1, oCollectableDeath);
                laps.dir = 0;
                laps.shrink = true;
                laps.sprite_index = sCollectable;
                instance_destroy();
            }
        }
    }
    
    oPlayer.alarm[2] = room_speed * 0.1;
    x = start_x;
    y = start_y;
    draw_xscale = 0;
    draw_yscale = 0;
    z = 0;
    zVel = 0;
    jump = true;
}

function scr_reset_reset()
{
    if (instance_exists(oDestro))
    {
        with (oDestro)
        {
            phase = 0;
            x = start_x;
            y = start_y;
            draw_xscale = 0;
            draw_yscale = 0;
        }
    }
    
    with (oCollectFrame)
    {
        if (image_index == 1)
        {
            instance_create_depth(x, y, depth - 1, oCollectFrame_dead);
            image_xscale = 2;
            image_index = 0;
        }
    }
    
    if (instance_exists(oGoal))
    {
        with (oGoal)
        {
            cur = 0;
            phase = 0;
            sprite_index = sSpawn;
        }
    }
    
    if (instance_exists(oBOunce))
    {
        with (oBOunce)
            activated = false;
    }
}

function scr_jump(arg0 = 1)
{
    if (!audio_is_playing(soJUMP))
        scr_Sound(0);
    
    j_x = x;
    j_y = y;
    zVel = -jump_speed * arg0;
    jump = false;
    draw_xscale = 0.66;
    draw_yscale = 1.33;
}
