var obj=argument0;
with (obj_inventory)
{
	var index=ds_list_find_index(invList,obj);
	ds_list_delete(invList,index);
}

//Hide off screen
with (obj)
{
	inInventory=false;
	x=-x;
	y=-y;
}