//Don't add things twice
if (inInventory)
	exit;

audio_play_sound(snd_collectItem,0,false);
inInventory=true;
sprite_index=inventorySprite;
var myObjIndex=object_index;
with (obj_inventory)
{
	ds_list_add(invList,myObjIndex);
	listChanged=true;
}