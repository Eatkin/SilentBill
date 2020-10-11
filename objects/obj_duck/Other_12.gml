/// @description

if (global.feedDuckCounter==3)
	{
		global.gameOverType=GameOver.UserIsADuck;
		room_goto(rm_gameOver);
		exit;
	}

if (global.feedDuckCounter>1)
	createTextbox(x,y,"If you try offer these ducks things one more time...");
else
	createTextbox(x,y,"No I will not pay the ducks! They're cold blooded killers!");
global.feedDuckCounter+=1;