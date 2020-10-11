/// @description


if (outline==true)
	{
		shader_set(shd_outline);
		var pxW=shader_get_uniform(shd_outline,"pixelwidth");
		var pxH=shader_get_uniform(shd_outline,"pixelheight");
		var _tex = sprite_get_texture(sprite_index,image_index);
		var tex_width = texture_get_texel_width(_tex);
		var tex_height = texture_get_texel_height(_tex);
		shader_set_uniform_f(pxW,tex_width);
		shader_set_uniform_f(pxH,tex_height);
	}
draw_self();
	
	
if (outline)
	shader_reset();

var toolTip=false;
//RIP anyone who has to make sense of this
if (outline==true and (inInventory or (object_index==obj_inventoryExamine or object_index==obj_inventoryUse or object_index==obj_inventoryCombine)))
	toolTip=true;
	
if (toolTip)
	draw_text(mouse_x+8,mouse_y+8,inventoryToolTip);

var magnifyingActive=false;
if (keyboard_check(vk_space) or (instance_exists(obj_magnifyingButton) and obj_magnifyingButton.active))
	magnifyingActive=true;

if (magnifyingActive and !instance_exists(obj_text) and !object_is_ancestor(object_index,parent_HUD_button) and !inInventory)
	draw_sprite(spr_magnifyingGlass,0,sprite_xcentre(),sprite_ycentre());