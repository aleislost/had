var _input = oGame.uKey_pressed || oGame.dKey_pressed || oGame.lKey_pressed || oGame.rKey_pressed || oGame.jKey_pressed;

switch (phase)
{
    case 0:
        image_alpha = scr_approach(image_alpha, 1, 0.01);
        
        if (image_alpha == 1 || _input)
        {
            image_alpha = 1;
            phase++;
        }
        
        break;
    
    case 1:
        if (_input)
        {
            sprite_index = sCredits_2;
            phase++;
        }
        
        break;
    
    case 2:
        if (_input)
        {
            sprite_index = sCredits_3;
            phase++;
        }
        
        break;
    
    case 3:
        if (_input)
        {
            sprite_index = sCredits_4;
            phase++;
        }
        
        break;
    
    case 4:
        if (_input)
            phase++;
        
        break;
    
    case 5:
        image_alpha = scr_approach(image_alpha, -0.5, 0.01);
        
        if (image_alpha == -0.5)
            room_goto(rMenu);
        
        break;
}
