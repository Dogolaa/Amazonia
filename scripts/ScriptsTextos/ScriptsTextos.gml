function scr_textos() {
    switch npc_nome {
		
	case "Pai":
        ds_grid_add_text("Oi filho, o grande dia está chegando, você se preparou anos para isso!", spr_pai_retrato, 0, "Pai", snd_pai_voice);
        ds_grid_add_text("Já vi que encontrou seu arco!", spr_pai_retrato, 0, "Pai", snd_pai_voice);
        ds_grid_add_text("Sim pai, estou pronto para realizar minha passagem para a vida adulta", spr_player_retrato, 1, "Eu", snd_player_voice);
        ds_grid_add_text("Filho, lá dentro você será desafiado a provar sua coragem, sabedoria e respeito pelas criaturas lendárias.", spr_pai_retrato_falando, 0, "Pai", snd_pai_voice);
        ds_grid_add_text("Fale com sua mãe na casa acima, ela te explicará melhor!", spr_pai_retrato_falando, 0, "Pai", snd_pai_voice);
        break;

    case "Mae":
        ds_grid_add_text("Oi filho, finalmente chegou o grande dia, como você já sabe, nossos ancestrais da tribo Tubinamba aprisionaram diversas criaturas do folclore no templo!", spr_mae_retrato, 0, "Mae", snd_mae_voice);
        ds_grid_add_text("... temendo o desequilíbrio entre o mundo espiritual e o humano..., já ouvi isso mil vezes mãe, estou pronto!", spr_player_retrato, 1, "Eu", snd_player_voice);
        ds_grid_add_text("Filho, lá cada lenda, além de ser uma ameaça física nos andares do templo, é também um desafio metafórico para a jornada de amadurecimento e compreensão, testando não apenas sua força e habilidade, mas também sua sabedoria e respeito.", spr_mae_retrato, 0, "Mae", snd_mae_voice);
        ds_grid_add_text("Seu tio irá te explicar as lendas que você vai enfrentar por lá, procure-o pela vila, sabichão!", spr_mae_retrato, 0, "Mae", snd_mae_voice);
        break;
		
		
   case "Tio":
    ds_grid_add_text("E aí, rapaz, está na hora. Vou te falar sobre os monstros que você encontrará lá e dar algumas dicas importantes, pestinha, então preste atenção!", spr_tio_retrato, 0, "Tio", snd_tio_voice);
    ds_grid_add_text("Beleza, tio, vai em frente", spr_player_retrato, 1, "Eu", snd_player_voice);
    ds_grid_add_text("Lá no templo, você vai encontrar o Lobisomem, conhecido por sua maldição noturna. É uma representação da dualidade humana. Sua presença no templo se manifesta não apenas como a criatura lupina, mas também como desafios que testam a capacidade dos jovens de controlar suas próprias dualidades. É um monstro violento com forma humana e de lobo, que se alimenta de sangue.", spr_tio_retrato, 0, "Tio", snd_tio_voice);
    ds_grid_add_text("*Gulp*, entendido tio, só isso?", spr_player_retrato, 1, "Eu", snd_player_voice);
    ds_grid_add_text("NÃO, você também vai encontrar o Corpo Seco. De acordo com a lenda, foi um homem muito malvado e egoísta que vivia prejudicando as pessoas. Era tão ruim que maltratava e batia na própria mãe. Após sua morte, ele foi rejeitado por Deus e pelo diabo. Até mesmo a terra, onde havia sido enterrado, o expulsou. Com o corpo em estado de decomposição, teve que sair de seu túmulo. Começou a viver como alma penada no templo.", spr_tio_retrato, 0, "Tio", snd_tio_voice);
    ds_grid_add_text("Vish, só de falar chegou a arrepiar aqui!", spr_player_retrato, 1, "Eu", snd_player_voice);
    ds_grid_add_text("NÃO TERMINEI, você também vai encontrar a Cuca. Trata-se de uma bruxa velha com aparência assustadora que possui cabeça de jacaré e unhas imensas. Dona de uma voz assustadora, a Cuca raptava as crianças desobedientes.", spr_tio_retrato, 0, "Tio", snd_tio_voice);
    ds_grid_add_text("Aqui vão minhas dicas: use mandiocas para recuperar sua vida. Você só poderá entrar na saída quando matar TODAS as criaturas do andar. Boa sorte!", spr_tio_retrato, 0, "Tio", snd_tio_voice);
	ds_grid_add_text("Procure o caminho entre as árvores e vá!", spr_tio_retrato, 0, "Tio", snd_tio_voice);
    break;
    }
}

function ds_grid_add_row() {
    ///@arg ds_grid
    
    var _grid = argument[0];
    ds_grid_resize(_grid, ds_grid_width(_grid), ds_grid_height(_grid) + 1);
    return ds_grid_height(_grid) - 1;
}

function ds_grid_add_text() {
    ///@arg texto
    ///@arg retrato
    ///@arg lado
	///@arg voz
    
    var _grid = texto_grid;
    var _y = ds_grid_add_row(_grid);
    
    _grid[# 0, _y] = argument[0];
    _grid[# 1, _y] = argument[1];
    _grid[# 2, _y] = argument[2];
    _grid[# 3, _y] = argument[3];
    _grid[# 4, _y] = argument[4];
    

}
