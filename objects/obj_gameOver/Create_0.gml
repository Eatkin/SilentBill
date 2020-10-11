/// @description

audio_play_sound(snd_gameOver,0,false);

var textB=instance_create_layer(100,10,"hud",obj_text);
var txt="GAME OVER\nYou were killed by a duck.";

switch (global.gameOverType)
	{
		case GameOver.BigChungusEatsYou:
			txt="GAME OVER\nA duck ate you for breakfast.";
			break;
		case GameOver.UserIsADuck:
			txt="GAME OVER\nYou were a duck all along.";
			break;
		case GameOver.UglyDuck:
			txt="GAME OVER\nA fat ugly duck wants to take you on a dinner date.";
			break;
		case GameOver.BlownUp:
			txt="GAME OVER\nA kamikazee duck took you out.";
			break;
		case GameOver.DuckLovesYou:
			txt="GAME OVER\nA duck fell in love with you and the dynamite didn't even go off.";
			break;
		case GameOver.Stabbed:
			txt="GAME OVER\nA crazed duck hacked you to pieces with a meat cleaver.";
			break;
		case GameOver.SalesDuck:
			txt="GAME OVER\nA door to door salesduck wants to interest you in a new vacuum cleaner.";
			break;
	}
	
txt+="\nYou survived: ";

var time=global.timeInGame;
var minutes=floor(time/3600);
//Take the minutes off so we only have the seconds remaining
time-=minutes*3600;
if (string_length(minutes)<2)
	minutes="0"+string(minutes);
	
var seconds=floor(time/60);
if (string_length(seconds)<2)
	seconds="0"+string(seconds);
	
	
txt+=string(minutes)+":"+string(seconds);
textB.text=txt;

background=noone;

switch (global.gameOverType)
	{
		case GameOver.BigChungusEatsYou:
			background=spr_bigChungusEatsYou;
			break;
		case GameOver.UserIsADuck:
			background=spr_youreaduck;
			break;
		case GameOver.UglyDuck:
			background=spr_uglyDuckDinnerDate;
			break;
		case GameOver.BlownUp:
			background=spr_duckBlewYouUp;
			break;
		case GameOver.DuckLovesYou:
			background=spr_duckLovesYouGameOver;
			break;
		case GameOver.Stabbed:
			background=spr_duckStabsYou;
			break;
		case GameOver.SalesDuck:
			background=spr_salesduck;
			break;
	}