///m3d_model_block_ext(ind,x1,y1,z1,x2,y2,z2,x3,y3,x4,y4,t1,t2,uv)
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
var tx = argument11;
var ty = argument12;

if (argument13)
{
///TOP
d3d_triangle(argument0,x3,y3,z2, x3,y4,z2, x4,y4,z2, 0.25,0.25,0.25,0.5,0.5,0.5)//
d3d_triangle(argument0,x4,y3,z2, x3,y3,z2, x4,y4,z2, 0.5,0.25,0.25,0.25,0.5,0.5)
///BOTTOM
d3d_triangle(argument0,x1,y2,z1, x1,y1,z1, x2,y2,z1, 0.25,1,0.25,0.75,0.5,1)
d3d_triangle(argument0,x1,y1,z1, x2,y1,z1, x2,y2,z1, 0.25,0.75,0.5,0.75,0.5,1)
///-x
d3d_triangle(argument0,x3,y3,z2, x1,y1,z1, x1,y2,z1, 0,0.25,0,0.5,0.25,0.5)
d3d_triangle(argument0,x3,y4,z2, x3,y3,z2, x1,y2,z1, 0.25,0.25,0,0.25,0.25,0.5)
///+y
d3d_triangle(argument0,x3,y4,z2, x1,y2,z1, x2,y2,z1, 0.25,0.5,0.25,0.75,0.5,0.75)
d3d_triangle(argument0,x4,y4,z2, x3,y4,z2, x2,y2,z1, 0.5,0.5,0.25,0.5,0.5,0.75)
///+x
d3d_triangle(argument0,x4,y4,z2, x2,y2,z1, x2,y1,z1, 0.5,0.25,0.5,0.5,0.75,0.5)
d3d_triangle(argument0,x4,y3,z2, x4,y4,z2, x2,y1,z1, 0.75,0.25,0.5,0.25,0.75,0.5)
///-y
d3d_triangle(argument0,x4,y3,z2, x2,y1,z1, x1,y1,z1, 0.25,0,0.25,0.25,0.5,0.25)
d3d_triangle(argument0,x3,y3,z2, x4,y3,z2, x1,y1,z1, 0.5,0,0.25,0,0.5,0.25)
}
else
{
///TOP
d3d_triangle(argument0,x3,y3,z2, x3,y4,z2, x4,y4,z2, 0,0,0,ty,tx,ty)//
d3d_triangle(argument0,x4,y3,z2, x3,y3,z2, x4,y4,z2, tx,0,0,0,tx,ty)
///BOTTOM
d3d_triangle(argument0,x1,y2,z1, x1,y1,z1, x2,y2,z1, 0,ty,0,0,tx,ty)
d3d_triangle(argument0,x1,y1,z1, x2,y1,z1, x2,y2,z1, 0,0,tx,0,tx,ty)
///-x
d3d_triangle(argument0,x3,y3,z2, x1,y1,z1, x1,y2,z1, 0,0,0,ty,tx,ty)
d3d_triangle(argument0,x3,y4,z2, x3,y3,z2, x1,y2,z1, tx,0,0,0,tx,ty)
///+y
d3d_triangle(argument0,x3,y4,z2, x1,y2,z1, x2,y2,z1, 0,0,0,ty,tx,ty)
d3d_triangle(argument0,x4,y4,z2, x3,y4,z2, x2,y2,z1, tx,0,0,0,tx,ty)
///+x
d3d_triangle(argument0,x4,y4,z2, x2,y2,z1, x2,y1,z1, 0,0,0,ty,tx,ty)
d3d_triangle(argument0,x4,y3,z2, x4,y4,z2, x2,y1,z1, tx,0,0,0,tx,ty)
///-y
d3d_triangle(argument0,x4,y3,z2, x2,y1,z1, x1,y1,z1, 0,0,0,ty,tx,ty)
d3d_triangle(argument0,x3,y3,z2, x4,y3,z2, x1,y1,z1, tx,0,0,0,tx,ty)
}
