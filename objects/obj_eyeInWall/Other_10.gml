/// @description


playScareFx();

if (stabbed)
	{
		shiftViewYPos(4);
		createTextbox(x,y+270*3+200,"Oh God he's bleeding, he's screaming, this is too horrible!");
		audio_play_sound(snd_duck2,0,false);
		exit;
	}
shiftViewYPos(1);
var _string="A duck stares back at me. I think I heard it say ";
_string+=chr(34);
_string+="I'm going to kill you. You aren't imagining this, this is really me saying I'm going to kill you.";
_string+=chr(34);
createTextbox(x,y+200,_string);
audio_play_sound(snd_duckKillYou,0,false);