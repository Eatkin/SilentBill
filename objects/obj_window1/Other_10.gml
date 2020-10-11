/// @description

var ypos=(obj_eyeInWall.stabbed) ? 2 : 1;
var text=(obj_eyeInWall.stabbed) ? "Looks safe to go out" : "Oh god I can't even leave with that duck out there!";
shiftViewYPos(ypos);

//This is window 1's pos, makes sure 1 and 2 both spawn textbox in the same place
var xx=1065;
var yy=27;
createTextbox(xx,yy+270*ypos, text);

if (global.jumpScareOption!=JumpScareOptions.Nice)
	audio_play_sound(snd_lookoutwindow,0,false);