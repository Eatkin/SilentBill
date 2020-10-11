/// @description

var cam=view_camera[0];
var camx=camera_get_view_x(cam);
var camw=camera_get_view_width(cam);
var camy=camera_get_view_y(cam);
var camh=camera_get_view_height(cam);

var pass=0;
if (x==clamp(x,camx,camx+camw))
	pass+=1;
if (y==clamp(y,camy,camy+camh))
	pass+=1;
	
if (pass==2)
{
	createTextbox(x,y,"They'll never follow me here");
	instance_destroy();
}