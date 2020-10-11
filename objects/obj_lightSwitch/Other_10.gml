/// @description

snd=audio_play_sound(snd_clickArrow,0,false);
audio_sound_gain(snd,1.4,0);

if (image_index==0)
{
	instance_create_layer(0,0,"hud",obj_darkness);
	//If the duck is still alive
	if (instance_exists(obj_duck))
		{
			createTextbox(x+64,y+64,"The lights went off. This seems like a bad idea...");
			//Create the big Chunguses
			if (global.jumpScareOption==JumpScareOptions.Nice)
				{
					instance_create_layer(714,270,"hud",obj_uglyDuck);
					instance_create_layer(1686,270,"hud",obj_uglyDuck);
				}
			else
				{
					instance_create_layer(714,146,"hud",obj_bigChungus);
					instance_create_layer(1686,146,"hud",obj_bigChungus);
				}
		}
	//If you've killed the duck
	else
		createTextbox(x+64,y+64,"The lights went off, I have a good feeling about this!");
}
else
	{
		if (instance_exists(obj_darkness))
			instance_destroy(obj_darkness);
	}
	
image_index=image_index^1;
if (image_index==0)
	obj_effects.lightsOn=true;
else
	obj_effects.lightsOff=true;