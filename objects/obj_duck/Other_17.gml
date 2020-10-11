/// @description blow the duck up with lit dynamite bread

removeFromInventory(obj_litDynamiteBread);

instance_create_layer(x,y,layer,obj_duckExploded);
instance_create_layer(x+sprite_width*0.5,y+sprite_height*0.5,layer,obj_explode);
instance_destroy();

audio_play_sound(snd_duckExplosion,0,false);