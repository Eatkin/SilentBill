/// @description knife

if (stabbed)
{
	createTextbox(x,y,"Okay, okay, I stabbed him already!");
	exit;
	}
	
stabbed=true;
createTextbox(x,y,"I won't go into details, but that was kind of a horrible thing to do.");

image_index=1;
image_speed=0;

audio_play_sound(snd_duck2,0,false);
playScareFx();