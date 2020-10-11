/// @description

draw_set_valign(fa_middle);
draw_set_halign(fa_left);
draw_text(x,y-64,"How to play:");
draw_sprite(spr_mouseCursor,0,x+18,y-40);											//y-40 to account for offset, same with x+18
draw_text(x+48,y-32,"Click/tap things to interact");
//draw_sprite(spr_space,0,x,y);														//No longer using space, using a button
//draw_sprite(spr_magnifyingButton,0,x,y-18);										//y-18 because the sprite is 36 high and typing sprite get height is too long even though this comment took way more effort
draw_sprite_ext(spr_magnifyingButton,0,x,y-9,0.5,0.5,0,c_white,1);					//Half scale
draw_text(x+48,y,"Hold this button to show interactable objects");

draw_sprite(spr_inventoryView,0,x+8,y+40);
draw_text(x+48,y+32,"Examine item");
draw_sprite(spr_inventoryUse,0,x+8,y+72);
draw_text(x+48,y+64,"Use item");
draw_sprite(spr_inventoryCombine,0,x+8,y+104);
draw_text(x+48,y+96,"Combine items");

if (os_browser==browser_not_a_browser)	{
	draw_sprite(spr_esc,0,x,y+128);
	draw_text(x+48,y+128,"Hold escape to quit");
}
//draw_text(x+96,y+64,"Walkthrough available on Silent Bill's itch.io page");
//draw_set_valign(fa_top);