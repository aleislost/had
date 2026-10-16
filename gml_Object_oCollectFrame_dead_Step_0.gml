image_xscale = lerp(image_xscale, 1, 0.1);
image_yscale = image_xscale;
image_angle += (xvel * 4);
yvel += 0.16;
x += xvel;
y += yvel;

if (y > 200)
    instance_destroy();
