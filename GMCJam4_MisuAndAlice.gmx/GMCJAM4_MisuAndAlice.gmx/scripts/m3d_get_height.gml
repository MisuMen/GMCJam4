///m3d_get_height(ind,x,y,w,h,sx,sy,tx,ty,height)
var ind = argument0;
var px = 0;
 var dx1 = 0;
 var dy1 = 0;
 var dx2 = 0;
 var dy2 = 0;
 var dx3 = 0;
 var dy3 = 0;
var x1 = floor(argument1 mod argument3);
var y1 = floor(argument2 mod argument4);
var x2 = (argument3/argument5);
var y2 = (argument4/argument6);
var x3 = argument7;
var y3 = argument8;
var height = argument9;
/*
var px1 = x3+(floor((x1*x2)/argument5)*argument5);
var py1 = y3+(floor((y1*y2)/argument5)*argument5);
var px2 = x3+(floor((x1*x2)/argument5)*argument5)+argument5;
var py2 = y3+(floor((y1*y2)/argument5)*argument5)+argument5;*/

  px = (x1+(y1*argument3))*4;
  buffer_seek(ind,buffer_seek_start,px)
  var d1 = (buffer_read(ind,buffer_u8)*height);
  px = (x1+((y1+1)*argument3))*4;
  buffer_seek(ind,buffer_seek_start,px)
  var d2 = (buffer_read(ind,buffer_u8)*height);
  px = ((x1+1)+((y1+1)*argument3))*4;
  buffer_seek(ind,buffer_seek_start,px)
  var d3 = (buffer_read(ind,buffer_u8)*height);
/*/(argument1 - p3.x) * (p2.y - p3.y) - (p2.x - p3.x) * (argument2 - p3.y);
var b1=(argument1 - px2) * (py1 - py1) - (px1 - px2) * (argument2 - py1);
var b2=(argument1 - px2) * (py1 - py2) - (px2 - px2) * (argument2 - py2);
var b3=(argument1 - px2) * (py2 - py2) - (px1 - px2) * (argument2 - py2);
var b4=(argument1 - px2) * (py1 - py2) - (px1 - px2) * (argument2 - py2);
if (b1==b2)&&(b2==b4)
{*/
dx1 = argument1 - x1;
dy1 = argument2 - y1;
dx2 = x1 - x1;
dy2 = (y1+1) - y1;
dx3 = (x1+1) - x1;
dy3 = (y1+1) - y1;

return  d1+((dy1*dx3-dx1*dy3)*(d2-d1)+(dx1*dy2-dy1*dx2)*(d3-d1))/(dx3*dy2-dx2*dy3);
