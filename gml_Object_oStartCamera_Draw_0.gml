if (sprite_exists(oGame.sprite_2))
    draw_sprite_ext(oGame.sprite_2, 0, x, y, 1, 1, image_angle, color, image_alpha);
else
    instance_destroy();

if (draw_cover)
{
}
