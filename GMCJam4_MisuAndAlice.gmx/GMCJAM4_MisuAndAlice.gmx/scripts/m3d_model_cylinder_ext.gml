/// m3d_model_cylinder_ext(ind,x,y,z,originx,originy,originz,x2,y2,w,h,d,w2,h2,step,closed)
var ind = argument0;

var xx = argument1;
var yy = argument2;
var zz = argument3;

var ow = argument4;
var oh = argument5;
var od = argument6;

var x0 = argument7;
var y0 = argument8;

var ww = argument9;
var hh = argument10;
var dd = argument11;

var w2 = argument12;
var h2 = argument13;

var tx = 1;
var ty = 1;

var step = argument14;
var point = 0;
var pix = (360/step);
var unit = 0;

var x1, y1, z1, x2, y2, z2, x3,x4,y3,y4;

repeat(step)
{
 x1 = lengthdir_x(ww*ow,point);
 y1 = lengthdir_y(hh*oh,point);
 x2 = lengthdir_x(ww*ow,point+pix);
 y2 = lengthdir_y(hh*oh,point+pix);
 
 x3 = lengthdir_x(w2*ow,point);
 y3 = lengthdir_y(h2*oh,point);
 x4 = lengthdir_x(w2*ow,point+pix);
 y4 = lengthdir_y(h2*oh,point+pix);
 
 d3d_triangle(ind,x0+x4,y0+y4,zz+(dd-(dd*od)), xx+x2,yy+y2,zz-(dd*od), xx+x1,yy+y1,zz-(dd*od), ((point+pix)/360)*tx,0,((point+pix)/360)*tx,ty,(point/360)*tx,ty);
 d3d_triangle(ind,x0+x3,y0+y3,zz+(dd-(dd*od)), x0+x4,y0+y4,zz+(dd-(dd*od)), xx+x1,yy+y1,zz-(dd*od),((point)/360)*tx,0,((point+pix)/360)*tx,0,((point)/360)*tx,ty);
 if (argument15)
 {
 d3d_triangle(ind,x0+x3,y0+y3,zz+(dd-(dd*od)), x0,y0,zz+(dd-(dd*od)), x0+x4,y0+y4,zz+(dd-(dd*od)), ((point)/360)*tx,ty,((point+unit)/360)*tx,0,((point+pix)/360)*tx,ty);
 d3d_triangle(ind,xx+x2,yy+y2,zz-(dd*od), xx,yy,zz-(dd*od), xx+x1,yy+y1,zz-(dd*od), ((point+pix)/360)*tx,ty,((point+unit)/360)*tx,0,((point)/360)*tx,ty);
 }
 point+=pix
 unit+=((pix)/step)
}

