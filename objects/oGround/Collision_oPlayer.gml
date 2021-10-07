playerLandedTime += delta_time / 10000;
if (playerLandedTime < 4)
{
audio_play_sound(Landing1, 1, false);
}
