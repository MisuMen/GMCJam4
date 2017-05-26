///m3d_start()
d3d_start()
texture_set_repeat(1)
texture_set_interpolation(1)

draw_set_colour(c_white)
draw_set_alpha(1)
global.M_INDEX = 0
global.BUFFER_IND = 0

global.OCT = 0;
global.OCT_W = 0;
global.OCT_H = 0;
global.OCT_D = 0;
global.OCT_ID = 0;

global.MDU = matrix_build(0,0,0,0,0,0,1,1,1);////

vertex_format_begin()
vertex_format_add_position_3d()
vertex_format_add_textcoord()
vertex_format_add_normal()
vertex_format_add_colour()
global.INDEX_MOD=vertex_format_end()
