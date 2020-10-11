/// @description

active=false;


scareTimerMax=240;
scareTimerMin=60;
scareTimerActive=false;
scareTimer=scareTimerMin+irandom(scareTimerMax-scareTimerMin);
scareTimerMax=scareTimer;

var snd=choose(snd_duckShake,snd_duckShake_2);
duckShakeSound=audio_play_sound(snd,0,false);