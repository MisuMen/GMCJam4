///grass(x,y,z,tilt)
var yerb = m3d_model_create();

if (argument3) m3d_model_wall(yerb,argument0-1,argument1-1,argument2,argument0+1,argument1+1,argument2+2,1,1,1)
else m3d_model_wall(yerb,argument0-1,argument1+1,argument2,argument0+1,argument1-1,argument2+2,1,1,1)

return yerb;
