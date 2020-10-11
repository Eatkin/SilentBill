/// @description

//update pos
var cam=view_camera[0];
var camx=camera_get_view_x(cam);
var camy=camera_get_view_y(cam);

//I.e. don't appear on inventory or for the ending sequence
x=min(camx+xstart,1856);
y=min(camy+ystart,1314);

var mouseOver=false;

if (mouse_x==clamp(mouse_x,bbox_left,bbox_right) and mouse_y==clamp(mouse_y,bbox_top,bbox_bottom))
	mouseOver=true;

if (mouse_check_button(mb_left) and mouseOver)
	active=true;
else
	active=false;
	
//Changes the cursor
global.mouseOver=mouseOver;