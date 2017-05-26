///m3d_get_height_new(ind,x,y,w,h,sx,sy,tx,ty,height)
var ind = argument0;
var px = 0;
 var dx1 = 0;
 var dy1 = 0;
 var dx2 = 0;
 var dy2 = 0;
 var dx3 = 0;
 var dy3 = 0;
 var ff = 0;
var x1 = floor((argument1 mod argument3));
var y1 = floor((argument2 mod argument4));
var x2 = (argument3/argument5);
var y2 = (argument4/argument6);
var x3 = argument7;
var y3 = argument8;
var height = argument9;
  px = ((x1)+((y1)*argument3))*4;
  buffer_seek(ind,buffer_seek_start,px)
  var d1 = (buffer_read(ind,buffer_u8)*height);
return  d1;
