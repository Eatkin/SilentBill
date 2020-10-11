/// @description

// Inherit the parent event
event_inherited();

if (!inventoryOpen)
	{
		var cam=view_camera[0];
		currentScreenX=camera_get_view_x(cam);
		currentScreenY=camera_get_view_y(cam);
		x=currentScreenX+xstart;
		y=currentScreenY+ystart;
	}

//If list size has changed, reorganise the inventory
if (listChanged)
	{
		listChanged=false;
		var listSize=ds_list_size(invList);
		var topLeftx=1920+52;
		var topLefty=11;
		for (var i=0; i<listSize; i+=1)
			{
				var obj=ds_list_find_value(invList,i);
				var spr=obj.sprite_index;
				var sWidth=sprite_get_width(spr);
				var sHeight=sprite_get_height(spr);
				var cellSize=128;
				var xx=topLeftx+(cellSize-sWidth)*0.5+128*(i%3);
				var yy=topLefty+(cellSize-sHeight)*0.5+128*floor(i/3);
					
				with (obj)
					{
						x=xx;
						y=yy;
					}
			}
	}
	
y=min(y,1080);