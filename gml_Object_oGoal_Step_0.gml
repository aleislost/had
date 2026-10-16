switch (phase)
{
    case 0:
        if ((cur >= amo && amo != 0) || done)
        {
            phase = 1;
            sprite_index = sSpawn_ready;
        }
        
        image_angle = 0;
        break;
    
    case 1:
        image_angle++;
        break;
}
