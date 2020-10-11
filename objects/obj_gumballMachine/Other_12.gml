/// @description dispense dynamite with coin

if (dynamiteDispensed)
	exit;
	
dynamiteDispensed=true;
var tnt=instance_create_layer(205,688,layer,obj_dynamite);
tnt.checkFirst=true;
removeFromInventory(obj_coin);

audio_play_sound(snd_combineItems,0,false);