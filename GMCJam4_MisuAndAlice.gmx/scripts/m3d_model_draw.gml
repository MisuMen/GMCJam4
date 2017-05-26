///m3d_model_draw(ind,x,y,z,rx,ry,rz,sx,sy,sz,tex,reset)
var md1 = matrix_build(argument1,argument2,argument3,argument4,argument5,argument6,argument7,argument8,argument9);
var mdl = matrix_multiply(md1,global.MDU);
matrix_set(matrix_world,mdl)
vertex_submit(global.BUFFER_IND[argument0],pr_trianglelist,argument10)
//matrix_set(matrix_world,matrix)
if (argument11) global.MDU = matrix_build(0,0,0,0,0,0,1,1,1);
