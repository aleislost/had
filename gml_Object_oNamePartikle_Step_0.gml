var dir = point_direction(0, 0, xdir, ydir);
image_angle += 8;
x += (dcos(dir + angle_bonus) * 0.5);
y += (-dsin(dir + angle_bonus) * 0.5);
image_xscale -= 0.02;
image_yscale = image_xscale;

if (image_xscale < 0)
    instance_destroy();
