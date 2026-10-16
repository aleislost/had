if (oGame.pause)
    exit;

image_angle++;

if (alarm[0] != -1)
    exit;

if (alarm[1] == -1)
    alarm[1] = room_speed * 0.25;

if (x != pos[ide].xx || y != pos[ide].yy)
{
    x = scr_approach(x, pos[ide].xx, spd);
    y = scr_approach(y, pos[ide].yy, spd);
}
else
{
    ide += suunt;
    
    switch (suunt)
    {
        case 1:
            if (ide == (array_length(pos) - 1))
                suunt = -1;
            
            break;
        
        case -1:
            if (ide == 0)
                suunt = 1;
            
            break;
    }
    
    alarm[0] = room_speed;
}
