/// @description

windowWidth=room_width;
windowHeight=room_height;
window_set_caption("Silent Bill");

var scale=1;

var displayWidth=display_get_width();
var displayHeight=display_get_height();
var scaleAdjustment=1;						//Means on desktop target it won't maximise to fullscreen

//Browser
if (os_browser!=browser_not_a_browser)	{
	var displayWidth=browser_width;
	var displayHeight=browser_height;
	//If we're in portrait orientation, flip the two variables
		if (displayHeight>displayWidth)	{
			var temp=displayWidth;
			displayWidth=displayHeight;
			displayHeight=temp;
		}
	var scaleAdjustment=0;
	
	//Create a resolution manager
	instance_create_layer(0,0,layer,obj_resolution);
}


while (windowWidth*(scale+scaleAdjustment)<displayWidth and windowHeight*(scale+scaleAdjustment)<displayHeight)
	scale+=1;
	
	
window_set_size(windowWidth*scale,windowHeight*scale);
display_set_gui_size(windowWidth,windowHeight);
display_reset(0,true);

if (windowWidth>displayWidth)	{
	window_set_size(displayWidth,displayHeight);
	display_reset(1,true);
}

alarm[0]=1;

window_set_cursor(cr_none);

//Globals
global.mouseOver=false;
global.gameOverType=0;
global.timeInGame=0;
global.jumpScareOption=JumpScareOptions.Regular;
//global.jumpScareOption=JumpScareOptions.Nice;
global.feedDuckCounter=0;

draw_set_font(fnt_cenGoth);

//Create persistent objects
instance_create_layer(0,0,layer,obj_effects);
instance_create_layer(0,0,layer,obj_leaveGame);