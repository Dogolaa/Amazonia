var _tecla_sair = keyboard_check_pressed(ord("E"));

switch (estado) {
    case "vazio":
        sprite_index = spr_vazio;
        estado = "imagem1";
        break;

    case "imagem1":
	
        sprite_index = spr_fogueira1;
        if (!audio_is_playing(snd_bizarro)) {
            audio_play_sound(snd_bizarro, 1, false);
        }

        if (_tecla_sair || (!_tecla_sair && !audio_is_playing(snd_bizarro))) {
            estado = "imagem2";
            audio_stop_sound(snd_bizarro);
        }
        break;

    case "imagem2":
        sprite_index = spr_fogueira2;
        if (!audio_is_playing(snd_imagem2)) {
            audio_play_sound(snd_imagem2, 1, false);
        }

        if (_tecla_sair || (!_tecla_sair && !audio_is_playing(snd_imagem2))) {
            estado = "imagem_extra";
            audio_stop_sound(snd_imagem2);
        }
        break;

    case "imagem_extra":
        sprite_index = spr_ancioes;
        if (!audio_is_playing(snd_anciao)) {
            audio_play_sound(snd_anciao, 1, false);
        }

        if (_tecla_sair || (!_tecla_sair && !audio_is_playing(snd_anciao))) {
            estado = "imagem3";
            audio_stop_sound(snd_anciao);
        }
        break;

    case "imagem3":
        sprite_index = spr_pidao;
        if (!audio_is_playing(snd_lobisomen)) {
            audio_play_sound(snd_lobisomen, 1, false);
        }

        if (_tecla_sair || (!_tecla_sair && !audio_is_playing(snd_lobisomen))) {
            estado = "imagem4";
            audio_stop_sound(snd_lobisomen);
        }
        break;

    case "imagem4":
        sprite_index = spr_kapo_seco2;
        if (!audio_is_playing(snd_corpo_seco_1)) {
            audio_play_sound(snd_corpo_seco_1, 1, false);
        }

        if (_tecla_sair || (!_tecla_sair && !audio_is_playing(snd_corpo_seco_1))) {
            estado = "imagem5";
            audio_stop_sound(snd_corpo_seco_1);
        }
        break;

    case "imagem5":
        sprite_index = spr_kapo_seco;
        if (!audio_is_playing(snd_corpo_seco_2)) {
            audio_play_sound(snd_corpo_seco_2, 1, false);
        }

        if (_tecla_sair || (!_tecla_sair && !audio_is_playing(snd_corpo_seco_2))) {
            estado = "imagem6";
            audio_stop_sound(snd_corpo_seco_2);
        }
        break;

    case "imagem6":
        sprite_index = spr_ku_k;
        if (!audio_is_playing(snd_cuca)) {
            audio_play_sound(snd_cuca, 1, false);
        }

        if (_tecla_sair || (!_tecla_sair && !audio_is_playing(snd_corpo_seco_2))) {
            estado = "imagem8";
            audio_stop_sound(snd_cuca);
        }
        break;

    case "imagem8":
        sprite_index = spr_ancioes;
        if (!audio_is_playing(snd_anciao_fim)) {
            audio_play_sound(snd_anciao_fim, 1, false);
        }

        if (_tecla_sair || (!_tecla_sair && !audio_is_playing(snd_anciao_fim))) {
            estado = "imagem9";
            audio_stop_sound(snd_anciao_fim);
        }
        break;

    case "imagem9":
        sprite_index = spr_epic;
        if (!audio_is_playing(snd_epic)) {
            audio_play_sound(snd_epic, 1, false);
        }

        if (_tecla_sair || (!_tecla_sair && !audio_is_playing(snd_epic))) {
            estado = "imagem10";
            audio_stop_sound(snd_epic);
        }
        break;

    case "imagem10":
        sprite_index = spr_fim;
        if (!audio_is_playing(snd_fim)) {
            audio_play_sound(snd_fim, 1, false);
        }

        if (_tecla_sair || (!_tecla_sair && !audio_is_playing(snd_fim))) {
            audio_stop_sound(snd_fim);
            room_goto(Room1);
        }
        break;
}
