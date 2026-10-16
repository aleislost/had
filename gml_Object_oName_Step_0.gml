switch (phase)
{
    case 0:
        image_alpha = scr_approach(image_alpha, 1.5, 0.01);
        
        if (image_alpha == 1.5)
            phase++;
        
        break;
    
    case 1:
        image_alpha = scr_approach(image_alpha, 0, 0.01);
        
        if (image_alpha == 0)
            instance_destroy();
        
        break;
}
