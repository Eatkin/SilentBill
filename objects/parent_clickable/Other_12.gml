/// @description COIN CURSOR

var message;
message[0]="Money doesn't solve everything";
message[1]="Offering to pay inanimate objects isn't going to get me very far";
message[2]="Come on, this is ridiculous";
message[3]="Are you just randomly clicking things hoping this is part of some illogical puzzle?";

var roll=irandom(3);
createTextbox(x,y,message[roll]);