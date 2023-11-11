
if obj_controller.modo == 1{
	if(index == 0){
		obj_controller.modo = 2
	}
	else if index == 1{
		ini_open("save_do_game")
		global.vida = ini_read_real("vida", "0", global.vida)
		global.nivel = ini_read_real("nivel", "0", global.nivel)
		ini_close()
		obj_controller.modo = 2
	}
	else if(index == 3){
		game_end();
	}
}