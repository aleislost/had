if (start)
{
    start = false;
    xbonus = (ide / amo) * pi * 2;
}

image_xscale = scr_approach(image_xscale, 1, 0.1);
image_yscale = image_xscale;
image_angle += 2;

if (alarm[0] == -1)
    alarm[0] = random_range(1, 2) * room_speed;

draw_y = sin(current_time * 0.005) * 2;

if (collected)
{
    if (!win)
    {
        depth = start_depth - y - 1;
        x = lerp(x, oPlayer.x + (sin((current_time * 0.001) + xbonus) * 8), 0.03);
        y = lerp(y, (oPlayer.y - 6) + (cos((current_time * 0.001) + xbonus) * 4), 0.03);
    }
    else
    {
        away += 1.5;
        
        if (alarm[1] == -1)
            alarm[1] = random_range(5, 15);
        
        x = lerp(x, oPlayer.x + (sin((current_time * 0.005) + xbonus) * (8 + away)), 0.03);
        y = lerp(y, (oPlayer.y - 6 - away) + (cos((current_time * 0.005) + xbonus) * 4), 0.03);
        image_alpha = scr_approach(image_alpha, 0, 0.01);
        
        if (image_alpha == 0)
            instance_destroy();
    }
}
