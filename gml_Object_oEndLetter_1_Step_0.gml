if (alarm[0] != -1)
    exit;

switch (phase)
{
    case 0:
        image_xscale = scr_approach(image_xscale, 1, 0.1);
        image_yscale = image_xscale;
        break;
    
    case 1:
        break;
}
