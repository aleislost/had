if (oGame.jKey_pressed || oGame.lKey_pressed || oGame.rKey_pressed || oGame.dKey_pressed)
{
    instance_create_depth(x, y, depth, oPlayer);
    
    with (oPlayer)
        scr_jump();
    
    instance_destroy();
}
