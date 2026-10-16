if (start)
{
    start = false;
    
    with (oCollectableBase)
        amo++;
    
    if (instance_exists(oCollectFrame))
    {
        with (oCollectFrame)
            x -= 16;
    }
    
    var _laps_2 = instance_create_depth((room_width / 2) - 16, 174, 100, oCollectFrame);
    _laps_2.ide = amo;
    _laps_2.x += 16 * amo;
    
    with (oGoal)
        amo++;
    
    ide = amo;
}

if (alive && !instance_exists(_laps) && !instance_exists(oUI))
{
    alive = false;
    alarm[0] = room_speed * 0.5;
}
