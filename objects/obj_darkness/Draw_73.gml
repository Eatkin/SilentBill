/// @description

gpu_set_blendmode(bm_subtract);
var hrepeats=ceil(480/sprite_width);
var vrepeats=ceil(270/sprite_height);
var cam=view_camera[0];
var xOrigin=camera_get_view_x(cam);
var yOrigin=camera_get_view_y(cam);

for (var i=0; i<hrepeats; i+=1)
	for (var j=0; j<vrepeats; j+=1)
		draw_sprite(sprite_index,0,xOrigin+sprite_width*i,yOrigin+sprite_width*j);
		
gpu_set_blendmode(bm_normal);