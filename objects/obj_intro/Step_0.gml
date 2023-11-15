
var _tecla_sair = keyboard_check_pressed(ord("E"));

switch (estado) {
    case "vazio":
        sprite_index = spr_vazio;
        estado = "imagem1";
        break;

    case "imagem1":
        sprite_index = spr_fogueira1;
		audio_play_sound(snd_bizarro, 1, false);


        if (_tecla_sair) {
            estado = "imagem2";
			audio_stop_all()
        }
        break;

    case "imagem2":
        sprite_index = spr_fogueira2;
		audio_play_sound(snd_imagem2, 1, false);

        if (_tecla_sair) {
            estado = "imagem_extra";
			audio_stop_all()
        }
        break;
		
	 case "imagem_extra":
        sprite_index = spr_ancioes;
		audio_play_sound(snd_anciao, 1, false);

        if (_tecla_sair) {
            estado = "imagem3";
			audio_stop_all()
        }
        break;

    case "imagem3":
        sprite_index = spr_pidao;
		audio_play_sound(snd_lobisomen, 1, false);

        if (_tecla_sair) {
            estado = "imagem4";
			audio_stop_all()
        }
        break;

    case "imagem4":
        sprite_index = spr_kapo_seco;
		audio_play_sound(snd_corpo_seco_1, 1, false);

        if (_tecla_sair) {
            estado = "imagem5";
			audio_stop_all()
        }
        break;

    case "imagem5":
        sprite_index = spr_kapo_seco2;
		audio_play_sound(snd_corpo_seco_2, 1, false);

        if (_tecla_sair) {
            estado = "imagem6";
			audio_stop_all()
        }
        break;

    case "imagem6":
        sprite_index = spr_ku_k;
		audio_play_sound(snd_corpo_seco_2, 1, false);

        if (_tecla_sair) {
            estado = "imagem8";
			audio_stop_all()
        }
        break;

    case "imagem8":
        sprite_index = spr_ancioes;
		audio_play_sound(snd_anciao_fim, 1, false);

        if (_tecla_sair) {
            estado = "imagem9";
			audio_stop_all()
        }
        break;

    case "imagem9":
        sprite_index = spr_epic;
		audio_play_sound(snd_epic, 1, false);

        if (_tecla_sair) {
            estado = "imagem10";
			audio_stop_all()
        }
        break;

    case "imagem10":
        sprite_index = spr_fim;
		audio_play_sound(snd_fim, 1, false);

        if (_tecla_sair) {
			audio_stop_all()
            room_goto(Room1);
        }
        break;
}
