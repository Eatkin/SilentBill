/// @description dynamite

createTextbox(x,y,"Great idea, dynamite isn't much good if it isn't lit");

//Remove stuff from inventory
removeFromInventory(obj_dynamite);

//Add the candle to inventory if necessary
with (obj_candle)
	addToInventory();

//Add lit dynamite to inventory
with (obj_dynamiteLit)
	addToInventory();
	
audio_play_sound(snd_combineItems,0,false);