/// @description

var hudWidth=display_get_gui_width();
var hudHeight=display_get_gui_height();

//Draw rectangles
var col=noone;
var strength;
if (lightsOn)
{
	col=c_white;
	strength=lightsOnStrength;
}
if (lightsOff)
{
	col=c_black;
	strength=lightsOffStrength;
}

if (col!=noone)
	{
		draw_set_alpha(strength);
		draw_set_colour(col);
		draw_rectangle(0,0,hudWidth,hudHeight,false);
		draw_set_alpha(1);
		draw_set_colour(c_white);
	}

//Film grain "filter"
gpu_set_blendmode(bm_subtract);

//Passes - anything above 2 makes it too dark really
var n=1;
repeat(n)
	{
		var xx=irandom(480);
		var yy=irandom(270);
		draw_sprite_tiled(spr_filmGrain,0,xx,yy);
	}
	
gpu_set_blendmode(bm_normal);