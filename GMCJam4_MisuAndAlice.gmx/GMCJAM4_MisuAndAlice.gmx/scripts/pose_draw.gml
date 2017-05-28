swingx += (135/8)
swingy += (90/8)
m3d_model_draw(patk,x,y,z+1,0,-10,-dir+180,1,1,1,global.tex,1);
m3d_model_draw(patk1,x,y,z+1,0,-10,-dir+180,1,1,1,global.tex,1);
//m3d_model_draw(patk2,x,800,12+1,0,-10,0,1,1,1,global.tex,1);
d3d_transform_set_identity()
d3d_transform_add_rotation_x(swingx)//-45 -> 45
d3d_transform_add_rotation_y(swingy)//-135 -> 0
d3d_transform_add_rotation_z(-dir+180)
d3d_transform_add_translation(x+lengthdir_x(1,(-dir+180)-90),y+lengthdir_y(2,(-dir+180)-90),z+6)
d3d_model_draw(patk3,0,0,0,global.tex)
d3d_transform_set_identity()
