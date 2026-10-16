draw_self();

if (!instance_exists(oSettings))
    draw_sprite_ext(sprite_index, image_index, room_width - x - 4, y, -image_xscale, image_yscale, -image_angle, image_blend, image_alpha);
