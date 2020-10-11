/// @description

//We die if not in the dark
if (!instance_exists(obj_darkness))
	instance_destroy();
	
//Check if on camera
var cam=view_camera[0];
var camx=camera_get_view_x(cam);
var camy=camera_get_view_y(cam);
var camw=camera_get_view_width(cam);
var camh=camera_get_view_height(cam);

if (x==clamp(x,camx,camx+camw) and y==clamp(y,camy,camy+camh) and active==false)
	{
		active=true;
		alarm[0]=timer;
		createTextbox(-100,-100,"Nobody will ever see this");
		playDuckFx();
	}