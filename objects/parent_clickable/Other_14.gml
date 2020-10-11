/// @description DYNAMITE CURSOR

var message;
message[0]="How will blowing random things up help me?";
message[1]="Even if that would be helpful, this dynamite is not even lit";
message[2]="I should stop being stupid";
message[3]="I need to stop messing around";

var roll=irandom(3);
createTextbox(x,y,message[roll]);