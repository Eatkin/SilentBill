/// @description

timeAlive+=1;
var _scale=image_xscale;
_scale+=sqr(timeAlive)*0.002;
image_xscale=_scale;
image_yscale=_scale;

if (_scale>8)
	room_goto(rm_gameOver);