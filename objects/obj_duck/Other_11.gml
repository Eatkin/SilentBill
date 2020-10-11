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
	createTextbox(x,y,"This is no time to make a peace offering! These ducks are out for blood!");
global.feedDuckCounter+=1;