x = lerp(x, goto_x, 0.1);
y = lerp(y, goto_y, 0.1);
image_xscale = scr_approach(image_xscale, 1, 0.04);
image_yscale = image_xscale;
image_angle = sin(current_time * 0.01) * 32;
