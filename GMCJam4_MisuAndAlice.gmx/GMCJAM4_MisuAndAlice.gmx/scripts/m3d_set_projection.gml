///m3d_set_projection(ind,x,y,z,dir,ang,distance,xup,yup,zup,fov,aspect,near,far)
var CAMx, CAMy, CAMz;
//Camera position
CAMx = cos(argument4*(pi/180))* cos(argument5*(pi/180));
CAMy = sin(argument4*(pi/180))* cos(argument5*(pi/180));
CAMz = sin(argument5*(pi/180));
d3d_set_projection_ext(argument1+(CAMx*argument6),argument2+(CAMy*argument6),argument3+(CAMz*argument6),argument1,argument2,argument3,
argument7,argument8,argument9,argument10, argument11, argument12, argument13);
draw_set_colour(c_white)
