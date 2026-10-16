if (phase == "WALK" && z == 0 && !win)
{
    if (other.hold == false)
    {
        if (other.activated == false && other.destro == false)
            other.alarm[0] = room_speed * 0.5;
        
        other.activated = true;
        scr_sound(soMOVER);
        other.hold = true;
        sprite_index = sPlayer_mover;
        phase = "MOVER";
        draw_xscale = 1.5;
        draw_yscale = 1.5;
        alarm[0] = room_speed * 0.1;
    }
}
