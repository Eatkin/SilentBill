/// @description bread

createTextbox(x,y,"What a brilliant idea, I can disguise this dynamite with bread and it's already lit and ready to go!");

//Remove stuff from inventory
removeFromInventory(obj_dynamiteLit);
removeFromInventory(obj_bread);

//Add lit dynamite to inventory
with (obj_litDynamiteBread)
	addToInventory();
	
audio_play_sound(snd_combineItems,0,false);