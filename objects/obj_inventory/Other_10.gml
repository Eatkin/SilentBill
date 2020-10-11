/// @description

inventoryOpen=true;
var cam=view_camera[0];

camera_set_view_pos(cam,inventoryX,inventoryY);

audio_play_sound(snd_inventoryOpen,0,false);