playerLandedTime += delta_time / 10000;

if (audio_is_playing(Landing1 == false) && playerLandedTime < 4)
	{
		audio_play_sound(Landing1, 1, false);
	}
