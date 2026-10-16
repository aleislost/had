rKey = keyboard_check(ord("D")) || keyboard_check(vk_right);
lKey = keyboard_check(ord("A")) || keyboard_check(vk_left);
uKey = keyboard_check(ord("W")) || keyboard_check(vk_up);
dKey = keyboard_check(ord("S")) || keyboard_check(vk_down);
jKey = keyboard_check(ord("X")) || keyboard_check(vk_space) || keyboard_check(ord("Z")) || keyboard_check(ord("J")) || keyboard_check(ord("K"));
rKey_pressed = keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right);
lKey_pressed = keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left);
uKey_pressed = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
dKey_pressed = keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);
jKey_pressed = keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(ord("J")) || keyboard_check_pressed(ord("K"));

if (screenshake != 0)
{
    screenshake = scr_approach(screenshake, 0, 0.1);
    camera_set_view_pos(view_camera[0], 0, sin(current_time * 0.01) * screenshake);
}

if (room != rEnd1)
{
    var _music;
    
    switch (room)
    {
        case rInit:
        case rKultisti:
        case rMenu:
        case rIntro:
        case rEnd2:
        case rCredits:
        case rLevels:
        case rFocus:
            _music = 13;
            break;
        
        default:
            _music = 5;
            break;
    }
    
    if (!audio_is_playing(_music))
    {
        audio_stop_all();
        audio_play_sound(_music, 10, true);
        audio_sound_gain(_music, 0, 0);
        audio_sound_gain(_music, music / 7.5, 10000);
    }
    
    if (music_change)
    {
        switch (room)
        {
            case rInit:
            case rKultisti:
            case rMenu:
            case rIntro:
            case rEnd1:
            case rEnd2:
            case rCredits:
            case rLevels:
            case rFocus:
                _music = 13;
                break;
            
            default:
                _music = 5;
                break;
        }
        
        if (!audio_is_playing(_music))
            audio_play_sound(_music, 10, true);
        
        audio_sound_gain(_music, music / 7.5, 0);
        music_change = false;
    }
}
else if (audio_is_playing(muMusic))
{
    if (alarm[0] == -1)
    {
        alarm[0] = room_speed * 10;
        audio_sound_gain(muMusic, 0, 3000);
    }
}
