/// @description


volumeGrid=ds_grid_create(5,6);

var lowVolume=0.5;
var midVolume=0.75;
var normalVolume=1;
//Now the tedious job of filling it in!

//Normal volume scenes
for (var i=0; i<4; i+=1)
	ds_grid_set(volumeGrid,i,0,normalVolume);
for (i=0; i<4; i+=1)
	ds_grid_set(volumeGrid,1,i,normalVolume);
	
ds_grid_set(volumeGrid,3,1,normalVolume);
ds_grid_set(volumeGrid,0,2,normalVolume);
ds_grid_set(volumeGrid,0,3,normalVolume);

//Mid volume scenes (safe etc) - (3,2), (3,3) and (2,3)
ds_grid_set(volumeGrid,3,2,midVolume);
ds_grid_set(volumeGrid,3,3,midVolume);
ds_grid_set(volumeGrid,2,3,midVolume);

//Low volume (inventory and looking outside) - (4,0), (0,1), (2,1) and (2,2), (0,4)
ds_grid_set(volumeGrid,4,0,lowVolume);
ds_grid_set(volumeGrid,0,1,lowVolume);
ds_grid_set(volumeGrid,2,1,lowVolume);
ds_grid_set(volumeGrid,2,2,lowVolume);
ds_grid_set(volumeGrid,0,4,lowVolume);

//Low volume powers, for escape sequence -(2,5) -> (3,5) -> (0,5) -> (1,5)
ds_grid_set(volumeGrid,2,5,power(lowVolume,2));
ds_grid_set(volumeGrid,3,5,power(lowVolume,3));
ds_grid_set(volumeGrid,0,5,power(lowVolume,4));
ds_grid_set(volumeGrid,1,5,power(lowVolume,5));

theMusic=audio_play_sound(snd_backingTrack,0,true);