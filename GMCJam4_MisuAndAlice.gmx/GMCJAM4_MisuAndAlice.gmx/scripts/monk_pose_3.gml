monkey3 = m3d_model_create()
draw_set_colour(c_black)///eyes
m3d_model_ellipsoid(monkey3, -0.25,-0.2,6.5, 0.2,0.2,0.75, 1,1,5,5)
m3d_model_ellipsoid(monkey3, -0.25, 0.2,6.5, 0.2,0.2,0.75, 1,1,5,5)
draw_set_colour(make_color_rgb(100,60,14))///dark brown
m3d_model_ellipsoid(monkey3, 0.8,0,6, 2.5,2,3, 1,1,7,7)
m3d_model_ellipsoid(monkey3, 2.5,0,3, 5,4,5, 1,1,7,7)
m3d_model_ellipsoid(monkey3, 4,0,1, 3,1,1, 1,1,7,7)
draw_set_colour(make_color_rgb(120,80,34))///legs&arms
m3d_model_ellipsoid(monkey3, 2.5,-2,2, 4,1,5, 1,1,7,7)
m3d_model_ellipsoid(monkey3, 2.5,2,2, 4,1,5, 1,1,7,7)
draw_set_colour(make_color_rgb(115,75,30))
m3d_model_cylinder_ext(monkey3, 0.5,-1.8,4, 0.5,0.5,1, 0.8,-1.5, 1,1,3.5, 1.25,1.25, 5,1)
m3d_model_cylinder_ext(monkey3, 0.5,1.8,4, 0.5,0.5,1, 0.8,1.5, 1,1,3.5, 1.25,1.25, 5,1)

draw_set_colour(make_color_rgb(240,200,120))//skin color
m3d_model_ellipsoid(monkey3, 0,0,5.5, 2,2.5,2, 1,1,7,7)
///feet
m3d_model_ellipsoid(monkey3, 2.45,-2,0, 4,1,1, 1,1,7,7)
m3d_model_ellipsoid(monkey3, 2.45, 2,0, 4,1,1, 1,1,7,7)
////palms
draw_set_colour(make_color_rgb(255,220,140))//palms
m3d_model_ellipsoid(monkey3, 0.5,-1.8,0, 1.2,1.2,1, 1,1,7,7)
m3d_model_ellipsoid(monkey3, 0.5, 1.8,0, 1.2,1.2,1, 1,1,7,7)
m3d_model_finish(monkey3)
draw_set_colour(c_white)
