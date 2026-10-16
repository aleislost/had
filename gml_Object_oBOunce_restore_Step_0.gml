if (oGame.pause)
    exit;

if (!activated)
{
    image_xscale = scr_approach(image_xscale, 1, 0.01);
    image_yscale = image_xscale;
    scale = image_xscale;
}
else
{
    if (alarm[0] == -1)
        alarm[0] = room_speed;
    
    image_xscale = 0;
    image_yscale = 0;
    scale = 0;
}
