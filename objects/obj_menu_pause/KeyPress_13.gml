
if index == 0{
		/*ini_open("save_do_game")
		global.vida = ini_read_real("vida", "0", global.vida)
		global.nivel = ini_read_real("nivel", "0", global.nivel)
		ini_close()
		obj_controller.modo = 3;*/
		audio_resume_all()
		room_goto(Room2)
	}
	else if(index == 2){
		game_end();
	}
