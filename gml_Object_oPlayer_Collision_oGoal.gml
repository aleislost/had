if (win == false)
{
    if (other.phase == 1 && z >= 0 && draw_xscale != 0 && alarm[2] == -1)
    {
        win = true;
        alarm[3] = room_speed * 0.25;
    }
}
