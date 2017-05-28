
pose0 = m3d_model_create()
pose1 = m3d_model_create()
pose2 = d3d_model_create()
draw_set_colour(make_color_rgb(100,60,14))
m3d_model_cylinder_ext(pose0,0,-0.75,0.5, 0.5,0.5,1, 0,-0.75, 1,1,1, 1,1, 5, 1)
m3d_model_cylinder_ext(pose0,0,-0.75,2.25, 0.5,0.5,1, 0,-0.25, 1,1,2, 1,2, 5, 1)

m3d_model_cylinder_ext(pose0,0,0.75,0.5, 0.5,0.5,1, 0,0.75, 1,1,1, 1,1, 5, 1)
m3d_model_cylinder_ext(pose0,0,0.75,2.25, 0.5,0.5,1, 0,0.25, 1,1,2, 1,2, 5, 1)

draw_set_colour(make_color_rgb(140,100,34))
m3d_model_cylinder_ext(pose0,0.3,-0.75,-0.25, 0.5,0.5,1, 0,-0.75, 2,1,0.75, 0.25,0.25, 5, 1)
m3d_model_cylinder_ext(pose0,0.3,0.75,-0.25, 0.5,0.5,1, 0,0.75, 2,1,0.75, 0.25,0.25, 5, 1)

draw_set_colour(c_teal)
m3d_model_cylinder_ext(pose0,0,0,4.7, 0.5,0.5,1, 0,0, 1.4,3,2.75, 1.5,3.1, 5, 1)
m3d_model_cylinder_ext(pose0,0,0,5.5, 0.5,0.5,1, 0,0, 1.5,3,1, 1.5,5.7, 5, 1)
m3d_model_cylinder_ext(pose0,0,0,6.5, 0.5,0.5,1, 0,0, 1.5,5.7,1, 0.4,1, 5, 1)
draw_set_colour(c_white)
m3d_model_cylinder_ext(pose0,0,-2.2,5.5, 0.5,0.5,1, 0,-2, 1.1,1.1,2.25, 0.5,0.9, 5, 1)
m3d_model_cylinder_ext(pose0,0,2.2,5.5, 0.5,0.5,1, 0,2, 1.1,1.1,2.25, 0.5,0.9, 5, 1)
draw_set_colour(make_color_rgb(250,200,120))
m3d_model_ellipsoid(pose0,0,-2.2,2.9, 1,1,1, 1,1, 6,6)
m3d_model_ellipsoid(pose0,0,2.2,2.9, 1,1,1, 1,1, 6,6)
m3d_model_finish(pose0)
//////////////////////////////////////////////////////////
m3d_model_ellipsoid(pose1,0,0,8,4,4.5,4,1,1,8,8)
m3d_model_finish(pose1)
draw_set_colour(c_white)
d3d_model_ellipsoid(pose2,-2.5,-2.75,10.5,2.5,2.75,5.25,1,1,8)//hair
//m3d_model_finish(pose2)
