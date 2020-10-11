/// @description

var mx=mouse_x;
var my=mouse_y;

if (global.mouseOver=false and mx==clamp(mx,bbox_left,bbox_right) and my==clamp(my,bbox_top,bbox_bottom))
	{
		//I will set conditions to say whether we can hover over objects or not
		var hasfocus=!instance_exists(obj_text);
		//Only highlight if objects have focus
		if (hasfocus)
			{
				global.mouseOver=true;
				outline=true;
					
				if (mouse_check_button_pressed(mb_left))
					{
						//Find what cursor we have
						var cursor;
						with (obj_HUD)
							cursor=cursorType;
						//Regular action
						if (cursor==Cursor.Normal)
							{
								//Click if in inventory
								if (inInventory)
									{
										createInventoryStuff();
									}
								else
									event_perform(ev_other,ev_user0);
							}
						//THIS IS FOR USING ITEMS, WE TRIGGER A USER EVENT DEPENDING WHAT ITEM IS USED
						else
							{
								//HUD objects work as normal
								if (object_is_ancestor(object_index,parent_HUD_button))
									event_user(0);
								else
									{
										event_user(cursor);
									}
									
								//Reset the cursor type
								with (obj_HUD)
									cursorType=Cursor.Normal;
							}
						mouse_clear(mb_left);
					}
			}
		else if (object_index==obj_continueButton)
			{
				global.mouseOver=true;
				outline=true;
			}
	}