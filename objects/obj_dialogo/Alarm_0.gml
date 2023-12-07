if inicializar == true {
    if caractere < string_length(texto_grid[# INFOS.TEXTO, pagina]) {
        // Verifica se a letra atual é a primeira para evitar reiniciar o som
        if caractere == 0 {
            var _snd = texto_grid[# INFOS.VOZ, pagina];
            audio_play_sound(_snd, 1, 0);
        }
        caractere++;
        alarm[0] = 15;
    } 
}
