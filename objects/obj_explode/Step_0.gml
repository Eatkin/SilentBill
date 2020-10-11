/// @description

image_alpha-=0.02;
var scale=image_xscale;
scale-=0.01;
image_xscale=scale;
image_yscale=scale;

if (image_alpha<=0)
	instance_destroy();