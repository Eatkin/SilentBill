/// @description close inventory

destroyInventoryStuff();

with (obj_inventory)
	{
		obj_inventory.inventoryOpen=false;
		var camxTarget=currentScreenX;
		var camyTarget=currentScreenY;
	}

var cam=view_camera[0];
camera_set_view_pos(cam,camxTarget,camyTarget);

audio_play_sound(snd_inventoryClose,0,false);