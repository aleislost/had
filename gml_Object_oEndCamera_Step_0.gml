if (start == false)
{
    if (sprite_exists(oGame.sprite_1))
        sprite_delete(oGame.sprite_1);
    
    if (sprite_exists(oGame.sprite_2))
        sprite_delete(oGame.sprite_2);
    
    oGame.sprite_2 = sprite_create_from_surface(application_surface, 0, 0, 192, 192, false, false, 0, 192);
    start = true;
    room_goto_next();
}
