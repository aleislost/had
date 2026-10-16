if (oGame.pause)
    exit;

var dir = point_direction(0, 0, xdir, ydir);
angle += 8;
x += (dcos(dir) * 0.5);
y += (-dsin(dir) * 0.5);
image_xscale = scr_approach(image_xscale, 1, 0.06);
image_yscale = image_xscale;

if (x < 32 || x > 160 || y < 32 || y > 160)
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
