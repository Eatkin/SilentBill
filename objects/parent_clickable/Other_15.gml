/// @description LIT DYNAMITE CURSOR

var message;
message[0]="How will blowing random things up help me?";
message[1]="As tempting as it is, blowing things up isn't going to solve any problems";
message[2]="Maybe I should try blowing up a duck instead of random things";
message[3]="No";

var roll=irandom(3);
createTextbox(x,y,message[roll]);