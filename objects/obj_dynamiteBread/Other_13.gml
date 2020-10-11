/// @description candle

createTextbox(x,y,"The dynamite bread is now ready to explode");

//Remove stuff from inventory
removeFromInventory(obj_dynamiteBread);

//Add lit dynamite to inventory
with (obj_litDynamiteBread)
	addToInventory();