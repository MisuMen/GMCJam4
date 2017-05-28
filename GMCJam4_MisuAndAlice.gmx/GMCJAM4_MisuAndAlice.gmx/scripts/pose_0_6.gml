
test[5] = m3d_model_create()
draw_set_colour(make_color_rgb(100,60,14))
///LEGS
m3d_model_cylinder_ext(test[5],0.5,0.75,0.5, 0.5,0.5,1, 0.5,0.75, 1,1,1, 1,1, 5, 1)
m3d_model_cylinder_ext(test[5],0.5,0.75,2.25, 0.5,0.5,1, 0,0.25, 1,1,2, 1,2, 5, 1)

m3d_model_cylinder_ext(test[5],-0.75,-0.75,0.75, 0.5,0.5,1, -0.4,-0.75, 1,1,1, 1,1, 5, 1)
m3d_model_cylinder_ext(test[5],-0.5,-0.75,2.25, 0.5,0.5,1, 0,-0.25, 1,1,2, 1,2, 5, 1)
///Feet
draw_set_colour(make_color_rgb(140,100,34))
m3d_model_cylinder_ext(test[5],0.8,0.75,-0.25, 0.5,0.5,1, 0.5,0.75, 2,1,0.75, 0.25,0.25, 5, 1)
m3d_model_cylinder_ext(test[5],-0.7,-0.75,0, 0.5,0.5,1, -0.9,-0.75, 2,1,0.75, 0.25,0.25, 5, 1)

draw_set_colour(c_teal)
m3d_model_cylinder_ext(test[5],0,0,4.7, 0.5,0.5,1, 0,0, 1.4,3,2.75, 1.5,3.1, 5, 1)
m3d_model_cylinder_ext(test[5],0,0,5.5, 0.5,0.5,1, 0,0, 1.5,3,1, 1.5,5.7, 5, 1)
m3d_model_cylinder_ext(test[5],0,0,6.5, 0.5,0.5,1, 0,0, 1.5,5.7,1, 0.4,1, 5, 1)
///Arms
draw_set_colour(c_white)
m3d_model_cylinder_ext(test[5],0.5,-2.2,5.5, 0.5,0.5,1, 0,-2, 1.1,1.1,2.25, 0.5,0.9, 5, 1)
m3d_model_cylinder_ext(test[5],-0.5,2.2,5.5, 0.5,0.5,1, 0,2, 1.1,1.1,2.25, 0.5,0.9, 5, 1)
draw_set_colour(make_color_rgb(250,200,120))
m3d_model_ellipsoid(test[5],0.5,-2.2,2.9, 1,1,1, 1,1, 6,6)
m3d_model_ellipsoid(test[5],-0.5,2.2,2.9, 1,1,1, 1,1, 6,6)
m3d_model_finish(test[5])
//////////////////////////////////////////////////////////
draw_set_colour(c_white)
