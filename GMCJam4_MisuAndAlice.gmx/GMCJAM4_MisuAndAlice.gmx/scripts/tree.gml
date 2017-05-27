///tree(x,y,z,w,h,d)
var xx = argument1;
var yy = argument2;
var zz = argument3+20;
var ww = argument4;
var hh = argument5;
var dd = argument6;
var dr = 0;
draw_set_colour(c_green)
repeat(28)
{
var ag=-90;
repeat(8)
{
 var lx = cos(dr*(pi/180))* cos(ag*(pi/180));
 var ly = sin(dr*(pi/180))* cos(ag*(pi/180));
 var lz = sin(ag*(pi/180));
 m3d_model_ellipsoid(argument0,xx+(lx*ww),yy+(ly*hh),16+zz+(lz*dd),16,16,14,1,1,8,8)
 ag+=(180/8);
}
 dr+=(360/28);
}

repeat(28)
{
 ag = -40;
 var lx = cos(dr*(pi/180))* cos(ag*(pi/180));
 var ly = sin(dr*(pi/180))* cos(ag*(pi/180));
 var lz = sin(ag*(pi/180));
 m3d_model_ellipsoid(argument0,xx+(lx*ww),yy+(ly*hh),10+zz+(lz*dd),16,16,14,1,1,8,8)
 dr+=(360/28);
}
draw_set_colour(make_colour_rgb(200,160,38))
m3d_model_cylinder(argument0,xx,yy,zz-12,4,5,32,1,1,3,1)
draw_set_colour(c_white)
