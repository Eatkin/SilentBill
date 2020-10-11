/// @description

if (time==0)
	exit;
	
var guiWidth=display_get_gui_width();
var guiHeight=display_get_gui_height();

draw_set_halign(fa_middle);
//The S stands for string
var timeS=ceil((maxTime-time)/60);
timeS=string(timeS);

//Draw outlined text
draw_set_colour(c_black);
for (var i=-1; i<=1; i+=1)
	for (var j=-1; j<=1; j+=1)
		if (i==0 and j==0)
			continue;
		else
			draw_text(guiWidth*0.5+i,guiHeight*0.9+j,"Exiting in: "+timeS);
			
draw_set_colour(c_white);
draw_text(guiWidth*0.5,guiHeight*0.9,"Exiting in: "+timeS);
draw_set_halign(fa_left);