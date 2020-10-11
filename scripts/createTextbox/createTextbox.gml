//Arg0 - x pos
//Arg 1 - y pos
//Arg2 - text
var _x=argument0;
var _y=argument1;
var textToShow=argument2;

var textBox=instance_create_layer(_x,_y,"hudButBelowCursor",obj_text);
textBox.text=textToShow;