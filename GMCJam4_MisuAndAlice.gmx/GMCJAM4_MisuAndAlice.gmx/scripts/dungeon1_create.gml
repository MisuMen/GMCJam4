dungeon1 = m3d_model_create()
xx = -8000;

draw_set_colour(make_colour_rgb(120,110,90))
m3d_model_block(dungeon1,xx+560,560,0,xx,0,90,1,1,0)
m3d_model_wall(dungeon1,xx,280,0,xx+560,280,90,1,1,0)
m3d_model_wall(dungeon1,xx+280,0,0,xx+280,560,90,1,1,0)
draw_set_colour(c_white)
m3d_model_finish(dungeon1)
