if (start == false)
    start = true;

switch (oLevelSelect.yide == 4)
{
    case true:
        y = lerp(y, start_y, 0.1);
        break;
    
    case false:
        y = lerp(y, start_y - 4, 0.1);
        break;
}
