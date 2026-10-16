if (shrink)
{
    image_angle += 2;
    image_xscale = scr_approach(image_xscale, 0, 0.025);
    image_yscale = image_xscale;
    
    if (image_xscale == 0)
        instance_destroy();
}
else
{
    event_inherited();
}
