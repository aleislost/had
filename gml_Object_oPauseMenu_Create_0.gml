x = room_width / 2;
instance_create_depth(x, y, depth - 5, oMenuArrow);
oMenuArrow.goto_y = y + 4;
menu = [];
var i = 0;
menu[i] = "continue";
i++;
menu[i] = "settings";
i++;
menu[i] = "menu";
i++;

if (room != rEnd1 && room != rEnd2)
    menu[i] = "skip";

index = 0;
oMenuArrow.goto_x = x - (string_length(menu[index]) * 5);
alarm[0] = room_speed * 0.2;
