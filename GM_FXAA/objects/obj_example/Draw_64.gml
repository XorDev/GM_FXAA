///@desc Draw slider and text

//Turn off filtering
gpu_set_tex_filter(false);
//Draw app surface at fullscale
draw_surface_stretched(application_surface,0,0,port_w,port_h);

//Black slider and text
draw_set_color(c_black);

//Slider x position
var _x = mouse_x/room_width*port_w;
//Draw slider
draw_line_width(_x,-1,_x,port_h,2);
//On/off text
var _str = "FXAA On";
draw_text((_x-8)-string_width(_str),2,_str);
draw_text((_x+8),2,"FXAA Off");