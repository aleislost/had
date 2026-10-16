draw_self();
var _al = alphe;

if (phase != 0)
{
    if (instance_exists(oPlayer))
    {
        with (oPlayer)
        {
            draw_sprite_ext(sShadow, !place_meeting(x, y, oGround), x, y - 1, draw_xscale, draw_yscale, 0, image_blend, 0.75 * _al);
            draw_sprite_ext(sprite_index, image_index, x, y + z, draw_xscale, draw_yscale, 0, image_blend, _al);
        }
    }
    
    if (instance_exists(oCollectable))
    {
        with (oCollectable)
            draw_sprite_ext(sprite_index, image_index, x, (y + draw_y) - 5, image_xscale, image_yscale, image_angle, c_white, image_alpha);
        
        if (instance_exists(oMovePartikle))
        {
            with (oMovePartikle)
                draw_self();
        }
    }
}
