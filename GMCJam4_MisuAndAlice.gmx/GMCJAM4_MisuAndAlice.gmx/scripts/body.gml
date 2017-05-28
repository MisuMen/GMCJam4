m3d_model_draw(pose1,x,y,z+1,0,0,-dir+180,1,1,1,global.tex,1);
rim(x,y,1.0,500.0,-1,128,165,255,0)
d3d_transform_set_identity()
d3d_transform_add_rotation_z(-dir+180)
d3d_transform_add_translation(x,y,z+1)
d3d_model_draw(pose2,0,0,0,tex4)
d3d_transform_set_identity()
