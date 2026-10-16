if (sprite_exists(oGame.sprite_2))
    sprite_delete(oGame.sprite_2);

oGame.sprite_2 = sprite_create_from_surface(application_surface, 0, 0, 192, 192, false, false, 0, 192);
color = 16777215;
oName.visible = false;
var _laps = instance_create_depth(room_width / 2, 164, depth - 1, oNamePartikle);
_laps.xdir = -1;
_laps.ydir = 1;
_laps = instance_create_depth(room_width / 2, 164, depth - 1, oNamePartikle);
_laps.xdir = 1;
_laps.ydir = 1;
_laps = instance_create_depth((room_width / 2) - 16, 164, depth - 1, oNamePartikle);
_laps.xdir = -1;
_laps.ydir = 1;
_laps = instance_create_depth((room_width / 2) - 16, 164, depth - 1, oNamePartikle);
_laps.xdir = 1;
_laps.ydir = 1;
_laps = instance_create_depth((room_width / 2) + 16, 164, depth - 1, oNamePartikle);
_laps.xdir = -1;
_laps.ydir = 1;
_laps = instance_create_depth((room_width / 2) + 16, 164, depth - 1, oNamePartikle);
_laps.xdir = 1;
_laps.ydir = 1;
scr_screenshake(1);
