/// @description create dynamite duck scare

if (global.jumpScareOption==JumpScareOptions.Regular)
	{
		visible=false;
		instance_create_layer(x,y,"hud",obj_dynamiteDuck);
	}
else if (global.jumpScareOption==JumpScareOptions.Nice)
	{
		if (alarm[1]<0)
			alarm[1]=60+irandom(60);
	}