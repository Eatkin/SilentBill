/// @description glue

var message;
message[0]="What would be the point of glueing that?";
message[1]="What a silly idea";
message[2]="No, I need to use this glue on that painting";

var roll=irandom(2);
createTextbox(x,y,message[roll]);