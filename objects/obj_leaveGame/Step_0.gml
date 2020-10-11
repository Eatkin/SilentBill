/// @description

if (keyboard_check(vk_escape))
	time+=1;
else
	time=0;
	
if (time==maxTime)
	game_end();