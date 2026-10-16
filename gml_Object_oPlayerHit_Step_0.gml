x -= (dir * 0.1);

if (phase)
{
    var _laps = instance_create_depth(x, y - 6, depth + 1, oDeathPartikle);
    _laps.xdir = -1;
    _laps.ydir = -1;
    _laps = instance_create_depth(x, y - 6, depth + 1, oDeathPartikle);
    _laps.xdir = 1;
    _laps.ydir = -1;
    _laps = instance_create_depth(x, y - 6, depth + 1, oDeathPartikle);
    _laps.xdir = -1;
    _laps.ydir = 1;
    _laps = instance_create_depth(x, y - 6, depth + 1, oDeathPartikle);
    _laps.xdir = 1;
    _laps.ydir = 1;
    instance_destroy();
}
