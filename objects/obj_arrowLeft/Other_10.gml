/// @description

if (instance_exists(obj_duckHide))
	instance_destroy(obj_duckHide);

var cam=view_camera[0];		
var viewWidth=camera_get_view_width(cam);
var camx=camera_get_view_x(cam);
var camy=camera_get_view_y(cam);
camx-=viewWidth;
if (camx<0)
	camx+=1920;
camera_set_view_pos(cam,camx,camy);

if (irandom(10)==0 and camy<5*270)
	instance_create_layer(camx+viewWidth-64,camy+irandom(64),"instances",obj_duckHide);
	
audio_play_sound(snd_clickArrow,0,false);