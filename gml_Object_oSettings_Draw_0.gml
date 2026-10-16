draw_set_halign(fa_left);

for (var _i = 0; _i < array_length(menu); _i++)
{
    if (_i != index)
        draw_set_color(#123735);
    else
        draw_set_color(#2F6B4E);
    
    draw_text((room_width / 2) - 40, y + (_i * 16), menu[_i]);
    draw_text(((room_width / 2) - 40) + 48, y + (_i * 16), set[_i]);
}

draw_set_halign(fa_center);
draw_set_color(c_white);
