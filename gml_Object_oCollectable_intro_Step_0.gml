if (start)
{
    start = false;
    xbonus = xbonus * pi * 2;
}

image_xscale = scr_approach(image_xscale, 1, 0.1);
image_yscale = image_xscale;
image_angle += 2;

if (alarm[0] == -1)
    alarm[0] = random_range(1, 2) * room_speed;

draw_y = sin((current_time * 0.0025) + xbonus) * 2;

if (collected)
{
    if (alarm[1] == -1)
        alarm[1] = random_range(5, 15);
    
    x = lerp(x, oBlackHole.x + (sin((current_time * 0.01) + xbonus) * 8), 0.01);
    y = lerp(y, oBlackHole.y, 0.01);
    image_alpha = scr_approach(image_alpha, 0, 0.005);
    
    if (image_alpha == 0)
        instance_destroy();
}
