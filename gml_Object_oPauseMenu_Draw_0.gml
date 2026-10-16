var _col = 1114122;
draw_set_alpha(1);
draw_rectangle_color(0, 0, 192, 192, _col, _col, _col, _col, false);
draw_set_alpha(1);

if (instance_exists(oSettings))
    exit;

for (var _i = 0; _i < array_length(menu); _i++)
{
    if (_i != index)
        draw_set_color(#123735);
    else
        draw_set_color(#2F6B4E);
    
    draw_text(room_width / 2, y + (_i * 16), menu[_i]);
}

draw_set_color(c_white);
