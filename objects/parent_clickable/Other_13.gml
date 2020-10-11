/// @description CANDLE CURSOR

var message;
message[0]="No I will not burn that";
message[1]="Setting things on fire will come to no good. Except in certain circumstances";
message[2]="I don't know where I even got the idea that would be a sensible thing to try";
message[3]="I need to be sensible here";

var roll=irandom(3);
createTextbox(x,y,message[roll]);