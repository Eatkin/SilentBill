/// @description

if (!obj_padlock.opened)
	createTextbox(x-64,y,"I can't leave, there's a big padlock on the door I need to take off");
else
	if (obj_eyeInWall.stabbed)
		{
			//Go outside
			shiftViewYPos(5);
			createTextbox(1024,1408,"How did I get here? Stranded on this beach cove, in a beach hut. The ducks, nobody knows how evil they truly are.");
			if (instance_exists(obj_darkness))
				instance_destroy(obj_darkness);
			audio_play_sound(snd_doorClose,0,false);
		}
	else
		{
			//Scare!!
			if (sprite_index!=spr_openDoor)
				{
					audio_play_sound(snd_doorOpen,0,false);
					sprite_index=spr_openDoor;
					createTextbox(-1000,-1000,"trolololol ol ol ollo llollol");
					if (global.jumpScareOption!=JumpScareOptions.Nice)
						//create stabby duck
						instance_create_layer(sprite_xcentre(),sprite_ycentre()+60,"hud",obj_madDuck);
					else
						//Salesduck
						instance_create_layer(sprite_xcentre()-120,sprite_ycentre()+80,"hud",obj_salesDuck);
				}
		}