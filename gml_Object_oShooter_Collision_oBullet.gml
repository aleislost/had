with (other)
{
    if (image_xscale == 1)
    {
        var _laps = instance_create_depth(x, y, depth + 1, oDeathPartikle_small);
        _laps.xdir = -1;
        _laps.ydir = -1;
        _laps = instance_create_depth(x, y, depth + 1, oDeathPartikle_small);
        _laps.xdir = 1;
        _laps.ydir = -1;
        _laps = instance_create_depth(x, y, depth + 1, oDeathPartikle_small);
        _laps.xdir = -1;
        _laps.ydir = 1;
        _laps = instance_create_depth(x, y, depth + 1, oDeathPartikle_small);
        _laps.xdir = 1;
        _laps.ydir = 1;
        instance_destroy();
    }
}
