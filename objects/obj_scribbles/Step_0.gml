/// @description

// Inherit the parent event
event_inherited();

//Move off screen in the dark
if (instance_exists(obj_darkness))
	x=-xstart;
else
	x=xstart;