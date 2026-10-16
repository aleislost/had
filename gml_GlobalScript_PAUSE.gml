function scr_store_alarm(arg0)
{
    alarm_store = alarm[arg0];
    alarm[arg0] = -1;
}

function scr_continue_alarm(arg0)
{
    alarm[arg0] = alarm_store;
}

function scr_pause()
{
    scr_Sound(8);
    oGame.pause = !oGame.pause;
    
    switch (oGame.pause)
    {
        case true:
            if (instance_exists(oSirkkel))
            {
                with (oSirkkel)
                    scr_store_alarm(0);
            }
            
            if (instance_exists(oShooter))
            {
                with (oShooter)
                    scr_store_alarm(0);
            }
            
            if (instance_exists(oBOunce_restore))
            {
                with (oBOunce_restore)
                    scr_store_alarm(0);
            }
            
            instance_create_depth(0, (room_height / 2) - 32, -300, oPauseMenu);
            break;
        
        case false:
            scr_safedestroy(30);
            scr_safedestroy(18);
            scr_safedestroy(54);
            
            if (instance_exists(oSirkkel))
            {
                with (oSirkkel)
                    scr_continue_alarm(0);
            }
            
            if (instance_exists(oShooter))
            {
                with (oShooter)
                    scr_continue_alarm(0);
            }
            
            if (instance_exists(oBOunce_restore))
            {
                with (oBOunce_restore)
                    scr_continue_alarm(0);
            }
            
            break;
    }
}
