/// @description

draw_self();

var text;
if (myEnum==JumpScareOptions.Regular)
	text="Full jump scares";
else if (myEnum==JumpScareOptions.Silent)
	text="Silent jump scares";
else
	text="Jump scares replaced with amusing situations";
	
draw_set_halign(fa_left);
draw_text(x+64,y+16,text);