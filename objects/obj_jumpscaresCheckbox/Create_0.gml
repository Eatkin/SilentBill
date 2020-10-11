/// @description

event_inherited();

var first=(instance_number(object_index)==1) ? true : false;

if (first)
{
	image_index=1;
	myEnum=JumpScareOptions.Regular;
	var secondCheckbox=instance_create_layer(x,y+64,layer,obj_jumpscaresCheckbox);
	//var thirdCheckbox=instance_create_layer(x,y+128,layer,obj_jumpscaresCheckbox);
	secondCheckbox.myEnum=JumpScareOptions.Nice;
	//thirdCheckbox.myEnum=JumpScareOptions.Silent;
}

image_speed=0;