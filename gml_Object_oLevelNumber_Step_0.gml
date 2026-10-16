if (alarm[0] != -1)
    exit;

if (instance_exists(oUI))
{
    alphe = scr_approach(alphe, oUI.alphe - 0.5, 0.025);
}
else
{
    minus = 0;
    
    switch (phase)
    {
        case 0:
            alphe = scr_approach(alphe, 0.5, 0.025);
            
            if (alphe == 0.5)
            {
                phase++;
                alarm[0] = room_speed;
            }
            
            break;
        
        case 1:
            alphe = scr_approach(alphe, 0, 0.025);
            
            if (alphe == 0)
                phase++;
            
            break;
    }
}
