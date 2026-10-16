switch (phase)
{
    case 0:
        image_xscale = scr_approach(image_xscale, 0.5, 0.1);
        image_yscale = image_xscale;
        
        if (image_xscale == 0.5)
            phase++;
        
        break;
    
    case 1:
        image_xscale = scr_approach(image_xscale, 1.5, 0.1);
        image_yscale = image_xscale;
        
        if (image_xscale == 1.5)
        {
            var _laps = instance_create_depth(x, y, depth + 1, oBOuncePartikle);
            _laps.xdir = -1;
            _laps.ydir = -1;
            _laps = instance_create_depth(x, y, depth + 1, oBOuncePartikle);
            _laps.xdir = 1;
            _laps.ydir = -1;
            _laps = instance_create_depth(x, y, depth + 1, oBOuncePartikle);
            _laps.xdir = -1;
            _laps.ydir = 1;
            _laps = instance_create_depth(x, y, depth + 1, oBOuncePartikle);
            _laps.xdir = 1;
            _laps.ydir = 1;
            instance_destroy();
        }
        
        break;
}
