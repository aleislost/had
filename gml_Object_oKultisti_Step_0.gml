switch (phase)
{
    case 0:
        var _tot = 1.5;
        image_alpha = scr_approach(image_alpha, _tot, 0.01);
        
        if (image_alpha == _tot)
            phase++;
        
        break;
    
    case 1:
        var _tot = -0.25;
        image_alpha = scr_approach(image_alpha, _tot, 0.01);
        
        if (image_alpha == _tot)
            room_goto(rMenu);
        
        break;
}
