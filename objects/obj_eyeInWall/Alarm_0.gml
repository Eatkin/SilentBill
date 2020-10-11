/// @description

if (stabbed)
	exit;
	
image_index=image_index^1;

if (image_index==1)
	alarm[0]=20+irandom(maxtime/6);
else
	alarm[0]=40+irandom(maxtime);