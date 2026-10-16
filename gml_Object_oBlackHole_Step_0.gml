var scale = image_xscale;

with (oHoleTentacle)
{
    image_xscale = scale * (0.75 + (dsin((current_time * 0.01) + angle) * 0.25));
    image_yscale = scale * (0.75 + (dcos((current_time * 0.01) + (angle * 0.5)) * 0.25));
}

with (oHoleTentacle_small)
{
    image_xscale = scale * (0.75 + (dsin((current_time * 0.01) - (angle * 0.5)) * 0.25));
    image_yscale = scale * (0.75 + (dcos((current_time * 0.01) - angle) * 0.25));
}

oBlackHoleCover.image_xscale = scale;
oBlackHoleCover.image_angle = image_angle;
image_angle++;

for (var i = 0; i < 5; i++)
{
    flower[i].image_xscale = image_xscale * sin((current_time * 0.00025) + (i * 0.6)) * 1.75;
    flower[i].image_yscale = image_yscale * cos((current_time * 0.00025) + (i * 0.6)) * 1.5;
    flower[i].x = x + (sin((current_time * 0.00025) + (i * 1.2)) * 16 * image_xscale);
    flower[i].y = y + (cos((current_time * 0.00025) + (i * 1.2)) * 16 * image_xscale) + (sin((current_time * 0.002) + (i * 1.2)) * 5);
}

image_yscale = 0.85 + (0.15 * sin(current_time * 0.001));
oBlackHoleCover.image_yscale = image_yscale;

if (alarm[0] != -1)
    exit;

switch (phase)
{
    case 0:
        if (!audio_is_playing(soSTATIC))
            scr_Sound(10);
        
        image_xscale = scr_approach(image_xscale, 1, 0.005);
        
        if (image_xscale == 1)
        {
            phase = 1;
            alarm[0] = room_speed;
        }
        
        break;
    
    case 1:
        if (!audio_is_playing(soSTATIC))
            scr_Sound(10);
        
        break;
}
