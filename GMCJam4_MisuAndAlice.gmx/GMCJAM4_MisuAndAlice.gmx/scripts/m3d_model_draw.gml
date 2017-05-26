///m3d_model_draw(ind,x,y,z,rx,ry,rz,sx,sy,sz,tex,reset)
d3d_transform_set_identity()
d3d_transform_add_rotation_x(argument4);
d3d_transform_add_rotation_y(argument5);
d3d_transform_add_rotation_z(argument6);
d3d_transform_add_scaling(argument7,argument8,argument9);
d3d_transform_add_translation(argument1,argument2,argument3);
vertex_submit(global.BUFFER_IND[argument0],pr_trianglelist,argument10)
if (argument11) d3d_transform_set_identity()
