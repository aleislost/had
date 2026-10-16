switch (oLevelSelect.yide == 4)
{
    case true:
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, #2F6B4E, 1);
        break;
    
    case false:
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, #123735, 1);
        break;
}
