oMenuArrow.goto_y = y + 4;
menu = [];
set = [];
var i = 0;
menu[i] = "full";

if (window_get_fullscreen())
    set[i] = "x";
else
    set[i] = "o";

i++;
menu[i] = "size";
set[i] = "";

for (var o = 0; o < 5; o++)
{
    if (o < oGame.size)
        set[i] += "x";
    else
        set[i] += "o";
}

i++;
menu[i] = "sfx";
set[i] = "";

for (var o = 0; o < 5; o++)
{
    if (o < oGame.sfx)
        set[i] += "x";
    else
        set[i] += "o";
}

i++;
menu[i] = "music";
set[i] = "";

for (var o = 0; o < 5; o++)
{
    if (o < oGame.music)
        set[i] += "x";
    else
        set[i] += "o";
}

i++;
menu[i] = "return";
set[i] = "";
i++;
index = 0;
oMenuArrow.goto_x = 48;
alarm[0] = room_speed * 0.2;
