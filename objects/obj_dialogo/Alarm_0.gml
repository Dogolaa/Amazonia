var _snd = texto_grid[# INFOS.VOZ, pagina];
if inicializar == true {
    if caractere < string_length(texto_grid[# INFOS.TEXTO, pagina]) {
        
        if caractere == 0 {
            audio_play_sound(_snd, 5, 0);
        }
        caractere++;
        alarm[0] = 6;
		
		
    }
	
}
