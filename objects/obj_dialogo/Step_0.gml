if inicializar == false{
	scr_textos();
	inicializar = true;
	alarm[0] = 1;
	
}
 
if keyboard_check_pressed(ord("E")) {
	if caractere < string_length(texto_grid[# INFOS.TEXTO, pagina]){
		caractere = string_length(texto_grid[# INFOS.TEXTO, pagina]);
	}else{
		alarm [0] = 1;
		caractere = 0;
		if pagina < ds_grid_height(texto_grid) - 1 {
			pagina++;
			audio_stop_all();
		}else{
			//global.dialogo = false;
			audio_stop_all();
			audio_play_sound(snd_trilha_vila,3,true);
			instance_destroy();
		}
	}
}





