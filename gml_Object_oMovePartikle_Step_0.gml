var dir = point_direction(0, 0, xdir, ydir);
image_angle += 4;
x += (dcos(dir + angle_bonus) * 0.1);
y += (-dsin(dir + angle_bonus) * 0.1);
image_xscale -= 0.03;
image_yscale += 0.001;

if (image_xscale < 0)
    instance_destroy();
