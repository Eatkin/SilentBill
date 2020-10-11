/// @description

var txt="You have escaped the clutches of the evil ducks, but remember, they're always watching.";
txt+="\nYou escaped in: ";

var time=global.timeInGame;
var minutes=floor(time/3600);
//Take the minutes off so we only have the seconds remaining
time-=minutes*3600;
if (string_length(minutes)<2)
	minutes="0"+string(minutes);
	
var seconds=floor(time/60);
if (string_length(seconds)<2)
	seconds="0"+string(seconds);
	
	
txt+=string(minutes)+":"+string(seconds);

createTextbox(x,y,txt);