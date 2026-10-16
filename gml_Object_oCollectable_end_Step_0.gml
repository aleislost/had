if (start)
{
    start = false;
    x = oPlayerFin.x + (sin((current_time * 0.00025) + xbonus) * (64 + away));
    y = (oPlayerFin.y - 4) + (cos((current_time * 0.00025) + xbonus) * (64 + away));
}

if (!collected)
{
    x = lerp(x, oPlayerFin.x + (sin((current_time * 0.00025) + xbonus) * (48 + away)), 0.03);
    y = lerp(y, (oPlayerFin.y - 4) + (cos((current_time * 0.00025) + xbonus) * (48 + away)), 0.03);
    
    if (alarm[1] == -1)
        alarm[1] = random_range(5, 15);
    
    image_xscale = scr_approach(image_xscale, 1, 0.1);
    image_yscale = image_xscale;
    image_angle += 2;
    
    if (alarm[0] == -1)
        alarm[0] = random_range(1, 2) * room_speed;
}

if (collected)
{
    x = lerp(x, oEndLetter_1.x + (sin((current_time * 0.00025) + xbonus) * (48 + away)), 0.03);
    y = lerp(y, (oEndLetter_1.y - 4) + (cos((current_time * 0.00025) + xbonus) * (48 + away)), 0.03);
    
    if (alarm[1] == -1)
        alarm[1] = random_range(5, 15);
    
    image_xscale = scr_approach(image_xscale, 1, 0.1);
    image_yscale = image_xscale;
    image_angle += 2;
    
    if (alarm[0] == -1)
        alarm[0] = random_range(1, 2) * room_speed;
}
