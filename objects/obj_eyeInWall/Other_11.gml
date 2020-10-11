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
	createTextbox(x,y,"This duck is just waiting for an opportunity to get me, I'm not giving it any damn bread!");
global.feedDuckCounter+=1;