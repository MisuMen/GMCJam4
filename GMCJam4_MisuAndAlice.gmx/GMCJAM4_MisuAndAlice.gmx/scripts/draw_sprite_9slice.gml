///draw_sprite_9slice(sprite,image,x,y,w,h,left,top,right,bottom)

var _sprite = argument0;
var _image = argument1;
var _x = argument2;
var _y = argument3;
var _w = argument4;
var _h = argument5;
var _left = argument6;
var _top = argument7;
var _right = argument8;
var _bottom = argument9;

var _sw = sprite_get_width(_sprite);
var _sh = sprite_get_height(_sprite);
var _center = _sw - _left - _right;
var _middle = _sh - _top - _bottom;
var _excenter = _w - _left - _right;
var _exmiddle = _h - _top - _bottom;

// corners
draw_sprite_part(_sprite, _image, 0, 0, _left, _top, _x, _y);
draw_sprite_part(_sprite, _image, _sw - _right, 0, _right, _top, _x + _w - _right, _y);
draw_sprite_part(_sprite, _image, 0, _sh - _bottom, _left, _bottom, _x, _y + _h - _bottom);
draw_sprite_part(_sprite, _image, _sw - _right, _sh - _bottom, _right, _bottom, _x + _w - _right, _y + _h - _bottom);

// edges
draw_sprite_part_ext(_sprite, _image, _left, 0, _center, _top, _x + _left, _y, _excenter / _center, 1, c_white, 1);
draw_sprite_part_ext(_sprite, _image, _left, _sh - _bottom, _center, _bottom, _x + _left, _y + _h - _bottom, _excenter / _center, 1, c_white, 1);
draw_sprite_part_ext(_sprite, _image, 0, _top, _left, _middle, _x, _y + _top, 1, _exmiddle / _middle, c_white, 1);
draw_sprite_part_ext(_sprite, _image, _sh - _right, _top, _right, _middle, _x + _w - _right, _y + _top, 1, _exmiddle / _middle, c_white, 1);

// middle
draw_sprite_part_ext(_sprite, _image, _left, _top, _center, _middle, _x + _left, _y + _top, (_w - _left - _right) / _center, (_h - _top - _bottom) / _middle, c_white, 1);

