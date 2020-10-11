/// @description on top instances

//This is the easiest way of doing this without making a seperate manager object which cycles through every clickable to check if it's been clicked
//These are the 'on top' instances
if (checkFirst==true)
	event_perform(ev_step,ev_step_end);