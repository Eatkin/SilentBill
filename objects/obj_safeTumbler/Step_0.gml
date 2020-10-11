/// @description

// Inherit the parent event
event_inherited();

if (obj_safe.opened)
	exit;

//check the numbers - 21357
var check=false;
//Only check if we're the first tumbler though
if (firstTumbler)
	{
		var code;
		code[0]=2;
		code[1]=1;
		code[2]=3;
		code[3]=5;
		code[4]=7;

		for (var i=0; i<5; i+=1)
		{
			check=(tumbler[i].number==code[i]) ? true : false;
			if (check==false)
				break;
		}
	}

//Check passed!
if (check==true and obj_safe.opened=false)
	{
	audio_play_sound(snd_doorOpen,false,0);
	obj_safe.opened=true;
	x=-xstart;
	shiftViewYPos(3);
	createTextbox(-x,y+270,"It opened! Good thing the code was conveniently written down in plain view! Dumb ducks.");
	}