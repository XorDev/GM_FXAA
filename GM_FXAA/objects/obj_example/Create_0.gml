///@desc Initialize uniforms

//Define the texel uniform
u_texel = shader_get_uniform(shd_fxaa, "u_texel");

//Extract the texel size
var tex = sprite_get_texture(sprite_index, 0);
tex_w = texture_get_texel_width(tex);
tex_h = texture_get_texel_height(tex);


//We need the view port dimensions for the Draw GUI event
port_w = view_get_wport(0);
port_h = view_get_hport(0);

//Match pixel scale with room
surface_resize(application_surface, room_width, room_height);

//Some draw settings for this demo
application_surface_draw_enable(false); //We draw this manually
display_set_gui_size(port_w,port_h);
display_reset(16,0);
draw_set_font(fnt_main);