if (start == false)
{
    start = true;
    image_index = ide <= oGame.levels;
}

switch (ide == oLevelSelect.ide)
{
    case false:
        y = lerp(y, start_y, 0.1);
        break;
    
    case true:
        y = lerp(y, start_y - 4, 0.1);
        break;
}
