///m3d_model_terrain(ind,map,x,y,z,width,height,depth,xstep,ystep,hrepeat,vrepeat)
var ind = argument0;
var w = argument5;
var h = argument6;
var px = 0;
var d1 = 0;
var d2 = 0;
var d3 = 0;
var d4 = 0;
var x1 = argument2;
var y1 = argument3;
var x2 = w/argument8;
var y2 = h/argument9;
var xx = 0;
var yy = 0;
var zz = argument4;
var tx = argument10;
var ty = argument11;

var sf = surface_create(w,h);
var buff = buffer_create((((w+1)*(h+1))*4),buffer_grow,1);
var height = argument7;
///set up surface
draw_set_colour(c_white)
surface_set_target(sf)
draw_clear(0)
draw_sprite(argument1,0,0,0)
surface_reset_target()
///setup buffer
buffer_get_surface(buff,sf,0,0,0)

surface_free(sf)
///TOP
draw_set_colour(make_colour_rgb(60,255,70))
repeat(argument9)
{
 repeat(argument8)
 {
  px = ((xx*x2)+((yy*y2)*w))*4;
  buffer_seek(buff,buffer_seek_start,px)
  d1 = (buffer_read(buff,buffer_u8)*height);
  px = ((xx+1)*x2+((yy*y2)*w))*4;
  buffer_seek(buff,buffer_seek_start,px)
  d2 = (buffer_read(buff,buffer_u8)*height);
  px = ((xx*x2)+(((yy+1)*y2)*w))*4;
  buffer_seek(buff,buffer_seek_start,px)
  d3 = (buffer_read(buff,buffer_u8)*height);
  px = ((xx+1)*x2+(((yy+1)*y2)*w))*4;
  buffer_seek(buff,buffer_seek_start,px)
  d4 = (buffer_read(buff,buffer_u8)*height);
  d3d_triangle(ind,x1+(xx*x2),y1+(yy*y2),zz+d1, x1+(xx*x2),y1+((yy+1)*y2),zz+d3, x1+((xx+1)*x2),y1+((yy+1)*y2),zz+d4, 0,0,0,ty,tx,ty)//
  d3d_triangle(ind,x1+((xx+1)*x2),y1+(yy*y2),zz+d2, x1+(xx*x2),y1+(yy*y2),zz+d1, x1+((xx+1)*x2),y1+((yy+1)*y2),zz+d4, tx,0,0,0,tx,ty)
  xx++
 }
 xx=0; yy++
}
return buff;
