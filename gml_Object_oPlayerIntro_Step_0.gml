image_angle += 8;
image_alpha = scr_approach(image_alpha, -1, 0.001);
y = scr_approach(y, oBlackHole.y, 0.5);

if (y == oBlackHole.y)
{
    image_alpha = scr_approach(image_alpha, 0, 0.01);
    
    if (image_alpha == 0)
        instance_destroy();
}

if (alarm[1] == -1)
    alarm[1] = random_range(5, 15);
