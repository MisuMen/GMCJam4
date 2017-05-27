///m3d_model_ellipsoid(ind,x1,y1,z1,width,height,depth,t1,t2,xstep,ystep)
var ind = argument0;

var ww = argument4;
var hh = argument5;
var dd = argument6;

var xx = argument1;
var yy = argument2;
var zz = argument3;

var tx = argument7;
var ty = argument8;

var xstep = argument9;
var ystep = argument10;
var point = 0;
var angle = -90;
var pix = (360/xstep);
var piy = (180/ystep);

var x1, y1, z1, x2, y2, z2, x3, y3, x4, y4;
repeat(ystep)
{
z1 = sin(angle*pi/180)*(dd/2);
z2 = sin((angle+piy)*pi/180)*(dd/2);
repeat(xstep)
{
 x1 = (cos(point*pi/180)* cos(angle*pi/180))*(ww/2);
 y1 = (sin(point*pi/180)* cos(angle*pi/180))*(hh/2);
 x2 = (cos((point+pix)*pi/180)* cos(angle*pi/180))*(ww/2);
 y2 = (sin((point+pix)*pi/180)* cos(angle*pi/180))*(hh/2);
 x3 = (cos(point*pi/180)* cos((angle+piy)*pi/180))*(ww/2);
 y3 = (sin(point*pi/180)* cos((angle+piy)*pi/180))*(hh/2);
 x4 = (cos((point+pix)*pi/180)* cos((angle+piy)*pi/180))*(ww/2);
 y4 = (sin((point+pix)*pi/180)* cos((angle+piy)*pi/180))*(hh/2);
 
 d3d_triangle(ind,xx+x3,yy+y3,zz+z2, xx+x1,yy+y1,zz+z1, xx+x2,yy+y2,zz+z1, 
 ((point+pix)/360)*tx,((angle+90)/180)*ty,((point+pix)/360)*tx,((angle+90+piy)/180)*ty,(point/360)*tx,((angle+90+piy)/180)*ty);
 d3d_triangle(ind,xx+x4,yy+y4,zz+z2, xx+x3,yy+y3,zz+z2, xx+x2,yy+y2,zz+z1,
 (point/360)*tx,((angle+90)/180)*ty,((point+pix)/360)*tx,((angle+90)/180)*ty,(point/360)*tx,((angle+90+piy)/180)*ty);
 point+=pix
}
point=0;
angle+=piy
}
