if (alarm[0] != -1)
    exit;

var _xinput = oGame.rKey_pressed - oGame.lKey_pressed;
var _yinput = oGame.dKey_pressed - oGame.uKey_pressed;
var _enter = oGame.jKey_pressed;
var _q = 0;

if (_enter)
{
    if (yide == 4)
    {
        room_goto(rMenu);
    }
    else if (ide > maxi)
    {
        scr_Sound(7);
    }
    else
    {
        switch (ide)
        {
            case 0:
                room_goto(rIntro);
                break;
            
            case 1:
                room_goto(r01);
                break;
            
            case 2:
                room_goto(r02);
                break;
            
            case 3:
                room_goto(r41);
                break;
            
            case 4:
                room_goto(r42);
                break;
            
            case 5:
                room_goto(r43);
                break;
            
            case 6:
                room_goto(r44);
                break;
            
            case 7:
                room_goto(r45);
                break;
            
            case 8:
                room_goto(r51);
                break;
            
            case 9:
                room_goto(r52);
                break;
            
            case 10:
                room_goto(r53);
                break;
            
            case 11:
                room_goto(r61);
                break;
            
            case 12:
                room_goto(r62);
                break;
            
            case 13:
                room_goto(r63);
                break;
            
            case 14:
                room_goto(r71);
                break;
            
            case 15:
                room_goto(r72);
                break;
            
            case 16:
                room_goto(r73);
                break;
            
            case 17:
                room_goto(r81);
                break;
            
            case 18:
                room_goto(r54);
                break;
            
            case 19:
                room_goto(rFinalLevel);
                break;
        }
    }
}

if (_xinput != 0)
{
    scr_Sound(14);
    xide += _xinput;
    
    if (xide >= 5)
        xide = 0;
    else if (xide < 0)
        xide = 4;
    
    ide = (yide * 5) + xide;
    _q = 1;
}

if (_yinput != 0)
{
    scr_Sound(14);
    yide += _yinput;
    
    if (yide == 5)
        yide = 0;
    else if (yide < 0)
        yide = 4;
    
    ide = (yide * 5) + xide;
    _q = 1;
}

if (_q == 1)
{
    if (ide > oGame.levels)
    {
        txt = "? ? ?";
    }
    else
    {
        switch (ide)
        {
            case 0:
                txt = "beginning";
                break;
            
            case 1:
                txt = "friend";
                break;
            
            case 2:
                txt = "bird";
                break;
            
            case 3:
                txt = "danger";
                break;
            
            case 4:
                txt = "roundabout";
                break;
            
            case 5:
                txt = "two times";
                break;
            
            case 6:
                txt = "jump rope";
                break;
            
            case 7:
                txt = "windmill";
                break;
            
            case 8:
                txt = "guard";
                break;
            
            case 9:
                txt = "night shift";
                break;
            
            case 10:
                txt = "eye";
                break;
            
            case 11:
                txt = "around";
                break;
            
            case 12:
                txt = "patience";
                break;
            
            case 13:
                txt = "hurry";
                break;
            
            case 14:
                txt = "bullet";
                break;
            
            case 15:
                txt = "love";
                break;
            
            case 16:
                txt = "return";
                break;
            
            case 17:
                txt = "machinery";
                break;
            
            case 18:
                txt = "wave";
                break;
            
            case 19:
                txt = "stomach";
                break;
        }
    }
}
