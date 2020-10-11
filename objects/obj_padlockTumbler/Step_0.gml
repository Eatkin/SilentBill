/// @description

// Inherit the parent event
event_inherited();

//check the numbers - 21357
var check=false;
//Only check if we're the first tumbler though
if (firstTumbler)
	{
		var code;
		code[0]=3;
		code[1]=8;
		code[2]=2;

		for (var i=0; i<3; i+=1)
		{
			check=(tumbler[i].number==code[i]) ? true : false;
			if (check==false)
				break;
		}
	}

//Check passed!
if (check==true and obj_padlock.opened=false)
	{
		with (obj_padlock)
			{
				audio_play_sound(snd_doorUnlock,0,false);
				opened=true;
				x=-xstart;
			}
	shiftViewYPos(0);
	createTextbox(x,135,"Now I can go outside..well as long as there's no ducks out there waiting to murder me.");
	}