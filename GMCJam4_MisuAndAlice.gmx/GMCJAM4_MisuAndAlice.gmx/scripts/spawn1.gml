houses = m3d_model_create()
draw_set_colour(make_colour_rgb(180,180,80))
m3d_model_block(houses,860,935,0, 945,1010,48,1,1,0)///UV
m3d_model_block(houses,1100,920,0, 1150,1035,64,1,1,0)///UV
draw_set_colour(make_colour_rgb(120,70,30))
///doors
var tz = m3d_get_height(land[0,0],1100,965,2048,2048,64,64,0,0,1);
m3d_model_block(houses,1100-1,955,tz+2,1101,967,tz+17,1,1,0)
tz = m3d_get_height(land[0,0],1100,1010,2048,2048,64,64,0,0,1);
m3d_model_block(houses,1100-1,1010,tz+2,1101,1017,tz+17,1,1,0)
tz = m3d_get_height(land[0,0],1100,1010,2048,2048,64,64,0,0,1);
m3d_model_block(houses,945-1,990,tz+2,946,997,tz+17,1,1,0)
draw_set_colour(0)
m3d_model_block(houses,860-0.5,935-0.5,47, 945+0.5,1010+0.5,48,1,1,0)///UV
m3d_model_block(houses,1100-0.5,920-0.5,63, 1150+0.5,1035+0.5,64,1,1,0)///UV
draw_set_colour(c_white)
instance_create(900,900,oTree)
instance_create(920,1060,oTree)
instance_create(1045,1100,oTree)
instance_create(990,1100,oTree)
instance_create(1062,870,oTree)
instance_create(1126,1096,oTree)
instance_create(1000,936,oTree)
instance_create(1020,1000,oTree)
instance_create(870,900,oStone)
instance_create(960,1100,oStone)
instance_create(1000,1000,oStone)
instance_create(1100,1080,oStone)
grass_radius(gras1,875,870,2,0,8)
grass_radius(gras1,940,1090,2,0,8)
grass_radius(gras1,999,1054,2,0,8)
grass_radius(gras1,1045,995,2,0,8)
grass_radius(gras1,1020,900,2,0,8)
instance_create(0,0,oBoat)
instance_create(1100,1100,oMonky)

m3d_model_finish(houses)
