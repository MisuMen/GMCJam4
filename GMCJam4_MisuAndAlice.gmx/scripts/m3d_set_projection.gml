///m3d_set_projection(ind,x,y,z,dir,ang,distance,xup,yup,zup,fov,aspect,near,far)
var xx, yy, zz;
//Camera position
xx = cos(argument4*pi/180)* cos(argument5*pi/180);
yy = sin(argument4*pi/180)* cos(argument5*pi/180);
zz = sin(argument5*pi/180);
d3d_set_projection_ext(argument1,argument2,argument3,argument1+(xx*argument6),argument2+(yy*argument6),argument3+(zz*argument6),
argument7,argument8,argument9,argument10, argument11, argument12, argument13);
draw_set_colour(c_white)
