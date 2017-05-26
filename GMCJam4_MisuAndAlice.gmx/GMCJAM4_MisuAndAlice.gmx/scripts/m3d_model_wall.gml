///m3d_model_wall(ind,x1,y1,z1,x2,y2,z2,t1,t2)
var x1 = argument1;
var y1 = argument2;
var z1 = argument3;
var x2 = argument4;
var y2 = argument5;
var z2 = argument6;
var tx = argument7;
var ty = argument8;

if (argument9)
{
 ///-x
d3d_triangle(argument0,x1,y1,z2, x1,y1,z1, x2,y2,z1, 0,0,0,ty,tx,ty)
d3d_triangle(argument0,x2,y2,z2, x1,y1,z2, x2,y2,z1, tx,0,0,0,tx,ty)
}
else
{
///+x
d3d_triangle(argument0,x2,y2,z2, x2,y2,z1, x1,y1,z1, 0,0,0,ty,tx,ty)
d3d_triangle(argument0,x1,y1,z2, x2,y2,z2, x1,y1,z1, tx,0,0,0,tx,ty)
}
