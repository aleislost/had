if (draw_xscale != 0 && !other.activated && z >= 0 && !win)
{
    with (other)
    {
        var _laps = instance_create_depth(x, y, depth + 1, oBOuncePartikle);
        _laps.xdir = -1;
        _laps.ydir = -1;
        _laps = instance_create_depth(x, y, depth + 1, oBOuncePartikle);
        _laps.xdir = 1;
        _laps.ydir = -1;
        _laps = instance_create_depth(x, y, depth + 1, oBOuncePartikle);
        _laps.xdir = -1;
        _laps.ydir = 1;
        _laps = instance_create_depth(x, y, depth + 1, oBOuncePartikle);
        _laps.xdir = 1;
        _laps.ydir = 1;
    }
    
    other.activated = true;
    scr_jump(1.5);
}
