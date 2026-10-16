function scr_approach()
{
    if (argument[0] < argument[1])
        return min(argument[0] + argument[2], argument[1]);
    else
        return max(argument[0] - argument[2], argument[1]);
}

function scr_screenshake(arg0)
{
    oGame.screenshake = arg0;
}

function scr_safedestroy()
{
    if (instance_exists(argument[0]))
    {
        with (argument[0])
            instance_destroy();
    }
}

function scr_a()
{
    var _arra = [];
    
    for (var i = 0; i < argument_count; i++)
        _arra[i] = argument[i];
    
    return _arra;
}
