/// @description

var fullscreen=window_get_fullscreen();

window_set_fullscreen(!fullscreen);
if (fullscreen)
	alarm[0]=1;
	
image_index=(1-fullscreen);

audio_play_sound(snd_clickArrow,0,false);