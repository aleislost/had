if (phase == 0)
{
    y = start_x + (sin((current_time * 0.001) + bonus_x) * 8);
    x = abs(192 * cos((current_time * 0.0001) + bonus_y));
}

var _scal = sin((current_time * 0.001) + bonus_s);

switch (pos)
{
    case 0:
        if (_scal <= 0)
        {
            pos = 1;
            bonus_x = random_range(0, 2 * pi);
            bonus_y = random_range(0, 2 * pi);
        }
        
        break;
    
    case 1:
        if (_scal >= 0)
        {
            pos = 0;
            bonus_x = random_range(0, 2 * pi);
            bonus_y = random_range(0, 2 * pi);
        }
        
        break;
}

image_yscale = lerp(image_yscale, _scal * scal_max * 0.25, 0.1);
image_xscale = image_yscale;
