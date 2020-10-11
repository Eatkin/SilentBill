/// @description

var lerpStrength=0.1;
var maxStrength=0.8;

if (room!=rm_beachhut)
	{
		lightsOn=false;
		lightsOnTimer=0;
		lightsOff=false;
		lightsOffTimer=0;
	}

if (lightsOn)
	{
		lightsOnStrength=lerp(lightsOnStrength,0,lerpStrength);
		if (lightsOnTimer==0)
		{
			lightsOnTimer=lightsOnTimerMax+1;
			lightsOff=false;
			lightsOffTimer=0;
			lightsOnStrength=maxStrength;
		}
			
		lightsOnTimer-=1;
		
		if (lightsOnTimer==0)
			lightsOn=false;
			
	}
//Literally just the same thing again
if (lightsOff)
	{
		lightsOffStrength=lerp(lightsOffStrength,0,lerpStrength);
		if (lightsOffTimer==0)
		{
			lightsOffTimer=lightsOffTimerMax+1;
			lightsOn=false;
			lightsOnTimer=0;
			lightsOffStrength=maxStrength;
		}
			
		lightsOffTimer-=1;
		
		if (lightsOffTimer==0)
			lightsOff=false;
			
	}
