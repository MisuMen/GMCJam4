///collision_radio()
var dd = 0;

repeat(8)
{
 var lx = x+lengthdir_x(32,dd);
 var ly = y+lengthdir_y(32,dd);
 var hz = m3d_get_height(land[a,b],lx,ly,2048,2048,64,64,a,b,1)
 if hz >0 {x=lx; y=ly; return true}
 dd+=45
}
return false;
