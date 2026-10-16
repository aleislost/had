function scr_create_shd()
{
    var _num = 0;
    
    switch (room)
    {
        case r00:
            _num = 1;
            break;
        
        case r01:
            _num = 2;
            break;
        
        case r02:
            _num = 3;
            break;
        
        case r41:
            _num = 4;
            break;
        
        case r42:
            _num = 5;
            break;
        
        case r43:
            _num = 6;
            break;
        
        case r44:
            _num = 7;
            break;
        
        case r45:
            _num = 8;
            break;
        
        case r51:
            _num = 9;
            break;
        
        case r52:
            _num = 10;
            break;
        
        case r53:
            _num = 11;
            break;
        
        case r61:
            _num = 12;
            break;
        
        case r62:
            _num = 13;
            break;
        
        case r63:
            _num = 14;
            break;
        
        case r71:
            _num = 15;
            break;
        
        case r72:
            _num = 16;
            break;
        
        case r73:
            _num = 17;
            break;
        
        case r81:
            _num = 18;
            break;
        
        case r54:
            _num = 19;
            break;
        
        case rFinalLevel:
            _num = 20;
            break;
    }
    
    ini_open("had_save.ini");
    var _cur = ini_read_real("LEVELS", "LEVELS", 0);
    
    if (_num > _cur)
    {
        oGame.levels = _num;
        ini_write_real("LEVELS", "LEVELS", _num);
    }
    
    ini_close();
    var _ui = instance_create_depth(0, 0, -300, oUI);
    _ui.image_alpha = 0;
    _ui.phase = 1;
    _ui.alphe = 1;
    instance_create_depth(x, y, -300, oLevelNumber);
}
