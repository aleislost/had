draw_angle = 0;
face = 1;
xVel = 0;
yVel = 0;
phase = "WALK";
spd = 0.55;
start_depth = depth;
z = 0;
zVel = 0;
zVel_max = 3;
zmax = 5;
intro = false;
jump = true;
grav = 0.15;
jump_speed = 2;
draw_angle = 0;
ending = false;
draw_xscale = 0;
draw_yscale = 0;
j_x = x;
j_y = y;
start_x = x;
start_y = y;
win = false;

if (room != rIntro && room != rEnd1 && room != rEnd2 && room != r00)
{
    repeat (irandom_range(2, 4))
    {
        instance_create_depth(random_range(16, 176), random_range(16, 32), 300, oWisp);
        instance_create_depth(random_range(16, 176), random_range(160, 176), 300, oWisp);
        instance_create_depth(random_range(16, 32), random_range(16, 176), 300, oWisp);
        instance_create_depth(random_range(160, 176), random_range(16, 176), 300, oWisp);
    }
}
