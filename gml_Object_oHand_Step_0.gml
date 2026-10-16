switch (phase)
{
    case 0:
        y = scr_approach(y, room_height, 6);
        
        if (y == room_height)
            phase++;
        
        break;
    
    case 2:
        y = scr_approach(y, room_height * 2, 4);
        break;
}
