if (alarm[0] == -1)
{
    x += bonus_x;
    y += 3;
    image_angle += bonus_angle;
    
    if (y > 500)
    {
        if (sprite_exists(oGame.sprite_2))
            sprite_delete(oGame.sprite_2);
        
        instance_destroy();
    }
}
