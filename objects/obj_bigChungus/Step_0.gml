/// @description

//We die if not in the dark
if (!instance_exists(obj_darkness))
	instance_destroy();
	
//Check if on camera
var cam=view_camera[0];
var camx=camera_get_view_x(cam);
var camy=camera_get_view_y(cam);
var camw=camera_get_view_width(cam);
var camh=camera_get_view_height(cam);

if (active==true)
	{
		if (!instance_exists(obj_text))
			createTextbox(-100,-100,"Nobody will ever see this");
			
		scareTimer-=1;
		if (scareTimer==0)
		{
			alarm[0]=30+irandom(90);
		}
		if (scareTimer>0)
			{
				var _scale=1+0.01*(scareTimerMax/scareTimer);
				image_xscale=_scale;
				image_yscale=_scale;
				//Jitter
				var factor=1-scareTimer/scareTimerMax;
				x=xstart-factor*(3-6*random(factor));
				y=ystart-factor*(3-6*random(factor));
				if (!audio_is_playing(duckShakeSound))
				{
				var snd=choose(snd_duckShake,snd_duckShake_2);
				duckShakeSound=audio_play_sound(snd,0,false);
				}
			}
	}

if (x==clamp(x,camx,camx+camw) and y==clamp(y,camy,camy+camh))
	active=true;