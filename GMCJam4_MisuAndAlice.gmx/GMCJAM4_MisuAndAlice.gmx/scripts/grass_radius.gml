///grass_radius(ind,x,y,z,tilt,range)
var xx = argument1;
var yy = argument2;
var zz = argument3;
var ds = 4;
var dd = 0;
repeat(4)
{
repeat(ds/2)
{
var lx = xx+lengthdir_x(ds,dd);
var ly = yy+lengthdir_y(ds,dd);
var tz = m3d_get_height_new(land[a,b],lx,ly,2048,2048,64,64,0,0,1);
if (argument4) m3d_model_wall(argument0,lx-1,ly-1,zz+tz,lx+1,ly+1,tz+zz+2,1,1,1)
else m3d_model_wall(argument0,lx-1,ly+1,zz+tz,lx+1,ly-1,zz+tz+2,1,1,1)
 dd+=(360/(ds/2));
}
dd=0;
ds+=argument5
}
