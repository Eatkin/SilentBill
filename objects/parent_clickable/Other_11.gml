/// @description BREAD CURSOR

var message;
message[0]="Although bread is very useful, it's not that useful";
message[1]="Bread does not solve all the world's problems";
message[2]="Some people might say I'm strangely obsessed with bread";
message[3]="This bread would be better used as part of an elaborate sceheme to kill some ducks";

var roll=irandom(3);
createTextbox(x,y,message[roll]);