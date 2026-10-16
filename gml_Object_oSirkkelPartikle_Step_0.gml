image_xscale = scr_approach(image_xscale, 0, 0.02);
image_yscale = image_xscale;
image_angle += 8;

if (image_xscale == 0)
    instance_destroy();
