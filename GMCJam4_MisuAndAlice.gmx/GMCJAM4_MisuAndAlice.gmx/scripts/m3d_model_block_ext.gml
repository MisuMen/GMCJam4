///m3d_model_block_ext(ind,x1,y1,z1,x2,y2,z2,x3,y3,x4,y4,sx1,sy1,sx2,sy2,raise)
var x1 = argument1;
var y1 = argument2;
var z1 = argument3;
var x2 = argument4;
var y2 = argument5;
var z2 = argument6;
var x3 = argument7;
var y3 = argument8;
var x4 = argument9;
var y4 = argument10;

var x5 = argument11;
var y5 = argument12;
var x6 = argument13;
var y6 = argument14;
var z3 = argument15;
var tx = 1;
var ty = 1;

///TOP
d3d_triangle(argument0,x3,y3,z2+z3, x3,y4,z2+z3, x4,y4+y6,z2, 0,0,0,ty,tx,ty)//
d3d_triangle(argument0,x4,y3+y5,z2, x3,y3,z2+z3, x4,y4+y6,z2, tx,0,0,0,tx,ty)
///BOTTOM
d3d_triangle(argument0,x1,y2,z1+z3, x1,y1,z1+z3, x2,y2+y6,z1, 0,ty,0,0,tx,ty)
d3d_triangle(argument0,x1,y1,z1+z3, x2,y1+y5,z1, x2,y2+y6,z1, 0,0,tx,0,tx,ty)
///-x
d3d_triangle(argument0,x3,y3,z2+z3, x1,y1,z1+z3, x1,y2,z1+z3, 0,0,0,ty,tx,ty)
d3d_triangle(argument0,x3,y4,z2+z3, x3,y3,z2+z3, x1,y2,z1+z3, tx,0,0,0,tx,ty)
///+y
d3d_triangle(argument0,x3,y4,z2+z3, x1,y2,z1+z3, x2,y2+y6,z1, 0,0,0,ty,tx,ty)
d3d_triangle(argument0,x4,y4+y6,z2, x3,y4,z2+z3, x2,y2+y6,z1, tx,0,0,0,tx,ty)
///+x
d3d_triangle(argument0,x4,y4+y6,z2, x2,y2+y6,z1, x2,y1+y5,z1, 0,0,0,ty,tx,ty)
d3d_triangle(argument0,x4,y3+y5,z2, x4,y4+y6,z2, x2,y1+y5,z1, tx,0,0,0,tx,ty)
///-y
d3d_triangle(argument0,x4,y3+y5,z2, x2,y1+y5,z1, x1,y1,z1+z3, 0,0,0,ty,tx,ty)
d3d_triangle(argument0,x3,y3,z2+z3, x4,y3+y5,z2, x1,y1,z1+z3, tx,0,0,0,tx,ty)
