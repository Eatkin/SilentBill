/// @description

	
if (background==noone)
	exit;
	
//All backgrounds should =have bottom left origin
//Smaller sprites are shifted a bit
var xx=64*(sprite_get_width(background)<100);
draw_sprite(background,xx,0,room_height);