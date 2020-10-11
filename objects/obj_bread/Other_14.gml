/// @description Dynamite

createTextbox(x,y,"What a brilliant idea, I can disguise this dynamite with bread");

//Remove stuff from inventory
removeFromInventory(obj_dynamite);
removeFromInventory(obj_bread);

//Add lit dynamite to inventory
with (obj_dynamiteBread)
	addToInventory();
	
audio_play_sound(snd_combineItems,0,false);