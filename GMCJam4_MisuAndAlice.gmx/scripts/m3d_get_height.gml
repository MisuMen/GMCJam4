///m3d_get_height(ind,x,y,w,h,sx,sy,tx,ty,height)
var ind = argument0;
var px = 0;
 var dx1 = 0;
 var dy1 = 0;
 var dx2 = 0;
 var dy2 = 0;
 var dx3 = 0;
 var dy3 = 0;
 var ff = 0;
var x1 = floor((argument1 mod argument3)/(argument3/argument5));
var y1 = floor((argument2 mod argument4)/(argument4/argument6));
var x2 = (argument3/argument5);
var y2 = (argument4/argument6);
var x3 = argument7;
var y3 = argument8;
var height = argument9;
  px = ((x1*x2)+((y1*y2)*argument3))*4;
  buffer_seek(ind,buffer_seek_start,px)
  var d1 = (buffer_read(ind,buffer_u8)*height);
  px = ((x1+1)*x2+((y1*y2)*argument3))*4;
  buffer_seek(ind,buffer_seek_start,px)
  var d2 = (buffer_read(ind,buffer_u8)*height);
  px = ((x1*x2)+(((y1+1)*y2)*argument3))*4;
  buffer_seek(ind,buffer_seek_start,px)
  var d3 = (buffer_read(ind,buffer_u8)*height);
  px = ((x1+1)*x2+(((y1+1)*y2)*argument3))*4;
  buffer_seek(ind,buffer_seek_start,px)
  var d4 = (buffer_read(ind,buffer_u8)*height);
//p1 x y x1,y1,x2,y2
//(argument1 - p3.x) * (p2.y - p3.y) - (p2.x - p3.x) * (argument2 - p3.y);
var b1=((argument1-(x3+(x1+1)))*((y3+y1)-(y3+y1))-((x3+x1)-(x3+(x1+1)))*(argument2-(y3+y1)))<0;//1,2a
var b2=((argument1-(x3+(x1+1)))*((y3+y1)-(y3+(y1+1)))-((x3+(x1+1))-(x3+(x1+1)))*(argument2-(y3+(y1+1))))<0;//2a,3
var b3=((argument1-(x3+x1))*((y3+y1)-(y3+(y1+1)))-((x3+x1)-(x3+(x1+1)))*(argument2-(y3+(y1+1))))<0;//1,2b
var b4=((argument1-(x3+(x1+1)))*((y3+y1)-(y3+(y1+1)))-((x3+x1)-(x3+(x1+1)))*(argument2-(y3+(y1+1))))<0;//1,3
if (b1==b2)&&(b2==b4)
{
dx1 = argument1 - (x3+x1);
dy1 = argument2 - (y3+y1);
dx2 = (x3+x1) - (x3+x1);
dy2 = (y3+(y1+1)) - (y3+y1);
dx3 = (x3+(x1+1)) - (x3+x1);
dy3 = (y3+(y1+1)) - (y3+y1);
ff = d3;
}else
if (b1==b3)&&(b3==b4)
{
dx1 = argument1 - (x3+x1);
dy1 = argument2 - (y3+y1);
dx2 = (x3+(x1+1)) - (x3+x1);
dy2 = (y3+y1) - (y3+y1);
dx3 = (x3+(x1+1)) - (x3+x1);
dy3 = (y3+(y1+1)) - (y3+y1);
ff = d2;
}
return  d1+((dy1*dx3-dx1*dy3)*(ff-d1)+(dx1*dy2-dy1*dx2)*(d4-d1))/(dx3*dy2-dx2*dy3);
