cloud = m3d_model_create()

var xx = 0;
var yy = 0;
var zz = 0;
var ww = 46;
var hh = 38;
var dd = 12;
var dr = 0;
draw_set_colour(c_white)
repeat(12)
{
var ag=-90;
repeat(4)
{
 var lx = cos(dr*(pi/180))* cos(ag*(pi/180));
 var ly = sin(dr*(pi/180))* cos(ag*(pi/180));
 var lz = sin(ag*(pi/180));
 m3d_model_ellipsoid(cloud,xx+(lx*ww),yy+(ly*hh),zz+(lz*dd),24,32,16,1,1,6,6)
 ag+=(180/4);
}
 dr+=(360/12);
}
m3d_model_finish(cloud)

instance_create(1000,1000,oCloud)
instance_create(1500,1000,oCloud)
instance_create(1000,1500,oCloud)
instance_create(1000,2000,oCloud)
instance_create(1000,2500,oCloud)
instance_create(1500,2000,oCloud)
instance_create(1000,3000,oCloud)
instance_create(1000,3500,oCloud)
instance_create(1500,3000,oCloud)

instance_create(2000,1000,oCloud)
instance_create(2500,1000,oCloud)
instance_create(2000,1500,oCloud)
instance_create(2000,2000,oCloud)
instance_create(2000,2500,oCloud)
instance_create(2500,2000,oCloud)
instance_create(2000,3000,oCloud)
instance_create(2000,3500,oCloud)
instance_create(2500,3000,oCloud)

instance_create(3000,1000,oCloud)
instance_create(3500,1000,oCloud)
instance_create(3000,1500,oCloud)
instance_create(3000,2000,oCloud)
instance_create(3000,2500,oCloud)
instance_create(3500,2000,oCloud)
instance_create(3000,3000,oCloud)
instance_create(3000,3500,oCloud)
instance_create(3500,3000,oCloud)

