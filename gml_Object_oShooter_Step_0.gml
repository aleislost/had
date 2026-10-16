if (oGame.pause)
    exit;

angle = sin(current_time * 0.001) * 180;
image_xscale = lerp(image_xscale, 1, 0.1);
image_yscale = image_xscale;

if (alarm[0] == -1)
    alarm[0] = time * room_speed;
