///m3d_triangle(ind,x1,y1,z1,x2,y2,z2,x3,y3,z3,t1,t2,t3,t4,t5,t6)
var nx,ny,nz;
var IND= argument0;
var x1 = argument1;
var y1 = argument2;
var z1 = argument3;
var x2 = argument4;
var y2 = argument5;
var z2 = argument6;
var x3 = argument7;
var y3 = argument8;
var z3 = argument9;
nx = (z1-z2)*(y3-y2)-(y1-y2)*(z3-z2)
ny = (x1-x2)*(z3-z2)-(z1-z2)*(x3-x2)
nz = (y1-y2)*(x3-x2)-(x1-x2)*(y3-y2)

vertex_position_3d(global.BUFFER_IND[IND],x1,y1,z1)
vertex_texcoord(global.BUFFER_IND[IND],argument10,argument11)
vertex_normal(global.BUFFER_IND[IND],nx,ny,nz)
vertex_colour(global.BUFFER_IND[IND],draw_get_color(),draw_get_alpha())

vertex_position_3d(global.BUFFER_IND[IND],x2,y2,z2)
vertex_texcoord(global.BUFFER_IND[IND],argument12,argument13)
vertex_normal(global.BUFFER_IND[IND],nx,ny,nz)
vertex_colour(global.BUFFER_IND[IND],draw_get_color(),draw_get_alpha())

vertex_position_3d(global.BUFFER_IND[IND],x3,y3,z3)
vertex_texcoord(global.BUFFER_IND[IND],argument14,argument15)
vertex_normal(global.BUFFER_IND[IND],nx,ny,nz)
vertex_colour(global.BUFFER_IND[IND],draw_get_color(),draw_get_alpha())
