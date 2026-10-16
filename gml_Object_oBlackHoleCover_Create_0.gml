phase = -1;
image_index = 1;
line = [];

for (var i = 0; i < 8; i++)
{
    var _a = choose(0, 1, 2, 3);
    
    switch (_a)
    {
        case 0:
            line[i] = 
            {
                xx: random_range(0, 192),
                yy: -8
            };
            break;
        
        case 1:
            line[i] = 
            {
                xx: random_range(0, 192),
                yy: 200
            };
            break;
        
        case 2:
            line[i] = 
            {
                yy: random_range(0, 192),
                xx: -8
            };
            break;
        
        case 3:
            line[i] = 
            {
                yy: random_range(0, 192),
                xx: -200
            };
            break;
    }
}

alarm[0] = room_speed;
