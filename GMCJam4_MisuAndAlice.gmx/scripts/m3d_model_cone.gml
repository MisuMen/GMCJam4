///m3d_model_cone(ind,x1,y1,z1,width,height,depth,t1,t2,step,closed)
var ind = argument0;

var ww = argument4;
var hh = argument5;
var dd = argument6;

var xx = argument1;
var yy = argument2;
var zz = argument3;

var tx = argument7;
var ty = argument8;

var step = argument9;
var point = 0;
var pix = (360/step);
var unit = 0;

var x1, y1, z1, x2, y2, z2;

repeat(step)
{
 x1 = lengthdir_x(ww/2,point);
 y1 = lengthdir_y(hh/2,point);
 x2 = lengthdir_x(ww/2,point+pix);
 y2 = lengthdir_y(hh/2,point+pix);
 
 d3d_triangle(ind,xx+x1,yy+y1,zz-(dd/2), xx,yy,zz+(dd/2), xx+x2,yy+y2,zz-(dd/2),
 (point/360)*tx,ty,((point+unit)/360)*tx,0,((point+pix)/360)*tx,ty);
 if (argument10)
 {d3d_triangle(ind,xx+x2,yy+y2,zz-(dd/2), xx,yy,zz-(dd/2), xx+x1,yy+y1,zz-(dd/2), ((point+pix)/360)*tx,ty,((point+unit)/360)*tx,0,((point)/360)*tx,ty);}
 point+=pix
 unit+=((pix)/step)
}
