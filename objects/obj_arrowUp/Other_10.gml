/// @description

shiftViewYPos(levelDestination);

var cam=view_camera[0];
var camx=camera_get_view_x(cam);
var camy=camera_get_view_y(cam);
//Don't actually need to floor it but don't trust myself lol
var gridx=floor(camx/480);
var gridy=floor(camy/270);

var gridRef=gridx+5*gridy;

var snd;
switch (gridRef)
	{
		case 10:
			snd=snd_cupboardClose;
			break;
		case 15:
			snd=snd_drawerClose;
			break;
		default:
			snd=noone;
			break;
	}
	
if (snd!=noone)
	audio_play_sound(snd,0,false);
	
audio_play_sound(snd_clickArrow,0,false);