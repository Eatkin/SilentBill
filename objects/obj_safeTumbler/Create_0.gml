/// @description

event_inherited();

image_speed=0;

//If we are the first tumbler we mark ourselves as so and fill an array
firstTumbler=(instance_number(object_index)==1) ? true : false;

if (firstTumbler)
	{
		tumbler[0]=id;
		var xspacing=0.2*(480-2*(x%480));
		for (var i=1; i<5; i+=1)
			tumbler[i]=instance_create_layer(x+xspacing*i,y,layer,object_index);
	}

number=image_index;