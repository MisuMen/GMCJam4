
patk = m3d_model_create()
patk1 = m3d_model_create()
patk2 = m3d_model_create()
patk3 = d3d_model_create()
draw_set_colour(make_color_rgb(100,60,14))
m3d_model_cylinder_ext(patk,-0.5,-0.75,0.5, 0.5,0.5,1, -0.25,-0.75, 1,1,1, 1,1, 5, 1)
m3d_model_cylinder_ext(patk,-0.25,-0.75,2.25, 0.5,0.5,1, 0,-0.25, 1,1,2, 1,2, 5, 1)

m3d_model_cylinder_ext(patk,0.5,0.75,0.5, 0.5,0.5,1, 0.25,0.75, 1,1,1, 1,1, 5, 1)
m3d_model_cylinder_ext(patk,0.25,0.75,2.25, 0.5,0.5,1, 0,0.25, 1,1,2, 1,2, 5, 1)

draw_set_colour(make_color_rgb(140,100,34))
m3d_model_cylinder_ext(patk,-0.2,-0.75,-0.25, 0.5,0.5,1, -0.5,-0.75, 2,1,0.75, 0.25,0.25, 5, 1)
m3d_model_cylinder_ext(patk,0.8,0.75,-0.25, 0.5,0.5,1, 0.3,0.75, 2,1,0.75, 0.25,0.25, 5, 1)

draw_set_colour(c_teal)
m3d_model_cylinder_ext(patk,0,0,4.7, 0.5,0.5,1, 0,0, 1.4,3,2.75, 1.5,3.1, 5, 1)
m3d_model_cylinder_ext(patk,0,0,5.5, 0.5,0.5,1, 0,0, 1.5,3,1, 1.5,5.7, 5, 1)
m3d_model_cylinder_ext(patk,0,0,6.5, 0.5,0.5,1, 0,0, 1.5,5.7,1, 0.4,1, 5, 1)
draw_set_colour(c_white)
m3d_model_cylinder_ext(patk,-1,-2.2,5.5, 0.5,0.5,1, 0,-2, 1.1,1.1,2.25, 0.5,0.9, 5, 1)

draw_set_colour(make_color_rgb(250,200,120))
m3d_model_ellipsoid(patk,-1,-2.2,2.9, 1,1,1, 1,1, 6,6)
m3d_model_finish(patk)
//////////////////////////////////////////////////////////
m3d_model_ellipsoid(patk1,0,0,8,4,4.5,4,1,1,8,8)
m3d_model_finish(patk1)
draw_set_colour(c_white)
m3d_model_ellipsoid(patk2,0,0,8,4.5,5,4.5,1,1,6,6)//hair
m3d_model_finish(patk2)
d3d_model_cylinder(patk3,-0.5,-0.5,2.25,0.5,0.5,0,1,1,0,5)
d3d_model_ellipsoid(patk3,-0.5,-0.5,3,0.5,0.5,2,1,1,5)
