/// @description

x=lerp(x,1216,0.12);
y=lerp(y,180,0.12);
image_xscale=lerp(image_xscale,3,0.12);
image_yscale=image_xscale;

if (alarm[1]==15)
{
	var explode=instance_create_layer(x,y,"hud",obj_explode);
	explode.image_xscale=8;
	explode.image_yscale=8;
	explode.depth=depth-1;
}