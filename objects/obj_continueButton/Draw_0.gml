/// @description

draw_set_alpha(0.8);
// Inherit the parent event
event_inherited();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x+sprite_width*0.5,y+sprite_height*0.5,"Continue");
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_alpha(1);