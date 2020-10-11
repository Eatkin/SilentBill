/// @description lit dynamite

createTextbox(x,y-64,"That'll get that duck out the way, I am so smart");
if (global.jumpScareOption==JumpScareOptions.Regular)
	{
		sprite_index=spr_duckWithDynamite;
	}
else if (global.jumpScareOption==JumpScareOptions.Nice)
	{
		sprite_index=spr_duckLovesYou;
	}
	
activated=true;