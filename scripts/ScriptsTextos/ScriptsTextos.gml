function scr_textos() {
    switch npc_nome {
        case "Pai":
            ds_grid_add_text("Primeiro Texto", spr_pai_retrato, 0, "Pai", snd_pai_voice);
            ds_grid_add_text("Segundo Texto", spr_player_retrato, 1, "Eu", snd_player_voice);
            ds_grid_add_text("Terceiro Texto", spr_pai_retrato_falando, 0, "Pai", snd_pai_voice);
            ds_grid_add_text("Quarto Texto", spr_pai_retrato_falando, 0, "Pai", snd_pai_voice);
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
