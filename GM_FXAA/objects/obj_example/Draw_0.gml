///@desc Draw with FXAA

//Draw the original sprite for comparison
draw_self();

//FXAA needs texture filtering!
gpu_set_tex_filter(true);

//Apply FXAA
shader_set(shd_fxaa);
shader_set_uniform_f(u_texel, tex_w, tex_h);
//Draw part of the sprite with mouse slider
draw_sprite_part(sprite_index,image_index,0,0,mouse_x,sprite_height,0,0);
shader_reset();

//Swap through images with click or spacebar for demo
if mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_space)
{
	image_index++;
}