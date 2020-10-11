if (global.jumpScareOption==JumpScareOptions.Nice)
	exit;

var snd=choose(snd_jumpscarefx,snd_jumpscarefx_2,snd_jumpscarefx_3);
audio_play_sound(snd,0,false);