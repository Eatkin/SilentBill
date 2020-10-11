/// @description

// Inherit the parent event
event_inherited();

if (activated and !instance_exists(obj_text))
	timerActivated=true;
	
if (timerActivated)
	{
		if (!instance_exists(obj_text))
		{
			createTextbox(-1000,-1000,"IHFOAFIOWJFWA");
			alarm[0]=30+irandom(timerMax);
		}
	}