//Argument0 - the vertical position in the grid to move to

var cam=view_camera[0];
var camx=camera_get_view_x(cam);
var viewHeight=camera_get_view_height(cam);
camera_set_view_pos(cam,camx,viewHeight*argument0);