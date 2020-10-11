/// @description Knife

var message;
message[0]="Stabbing random things isn't a great idea";
message[1]="I guess I was hoping something useful would happen";
message[2]="Stabbing things may be fun, but it is not productive";

var roll=irandom(2);
createTextbox(x,y,message[roll]);