/// @description

var gain=audio_sound_get_gain(theMusic);
var cam=view_camera[0];
var camx=camera_get_view_x(cam);
var camy=camera_get_view_y(cam);
//Don't actually need to floor it but don't trust myself lol
var gridx=floor(camx/480);
var gridy=floor(camy/270);
var targetGain=ds_grid_get(volumeGrid,gridx,gridy);

if (instance_exists(obj_darkness))
	targetGain-=0.1;

if (gain==targetGain)
	exit;
	
gain=lerp(gain,targetGain,0.1);
audio_sound_gain(theMusic,gain,0);