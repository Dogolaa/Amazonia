global.srf_weapons = surface_create(room_width, room_height)


cell_t = 32;
//room_width = cell_t * 40;
//room_height = room_width div 2;
cell_h = room_width div cell_t;
cell_v = room_height div cell_t;
map_edge_size = 7

grid = ds_grid_create(cell_h, cell_v);
ds_grid_clear(grid, 0);
mp_grid = mp_grid_create(0,0,cell_h,cell_v,cell_t,cell_t);

audio_play_sound(snd_trilha,3,true);

randomize();
var dir = irandom(3);
var xx = cell_h div 2;
var yy = cell_v div 2;
var chances = 3;
var passos = 2000;
var inimigo_max = 40;
var inimigo_cont = 0;
var saida = 1;
var mandioca = 10;

var chao_index = 17;
norte = 1;
oeste = 2;
leste = 4;
sul = 8;



var tile_layer = layer_tilemap_get_id("Walltiles");

for (var i = 0; i < passos; i += 1) {
    if (irandom(chances) == chances) {
        dir = irandom(3);
    }

    xx += lengthdir_x(1, dir * 90);
    yy += lengthdir_y(1, dir * 90);

    xx = clamp(xx, map_edge_size, cell_h - map_edge_size);
    yy = clamp(yy, map_edge_size, cell_v - map_edge_size);

    grid[# xx, yy] = 1;
}
for (var xx = 0; xx < cell_h; xx++) {
    for (var yy = 0; yy < cell_v; yy++) {
      if(grid[# xx,yy] == 0){
			var norte_t = grid[# xx,yy - 1] == 0;
			var oeste_t = grid[# xx - 1 ,yy] == 0;
			var leste_t = grid[# xx + 1 ,yy] == 0;
			var sul_t = grid[# xx ,yy + 1] == 0;
			
			
			var tile_index = norte_t * norte + oeste_t *oeste + leste_t *leste + sul_t *sul + 1;
			
			
			
			tilemap_set(tile_layer,tile_index,xx,yy);

			
	  } else if(grid[# xx, yy] == 1){
			tilemap_set(tile_layer,17,xx,yy);
	  }
    }
}





for (var xx = 0; xx < cell_h; xx++) {
    for (var yy = 0; yy < cell_v; yy++) {
        if (grid[# xx, yy] == 0) {
            // Posso colocar parede
            instance_create_layer(xx * cell_t, yy * cell_t, "Instances", obj_parede);
        }

        if (grid[# xx, yy] == 1) {
            // Posso criar objetos
            var x1 = xx * cell_t + (cell_t / 2);
            var y1 = yy * cell_t + (cell_t / 2);

            if (!instance_exists(obj_player)) {
                instance_create_layer(x1, y1, "Instances", obj_player);
            }

            if (inimigo_max > 0) {
                var chances = 10;
                var dist = 130;
                if (irandom(chances) == chances && point_distance(x1, y1, obj_player.x, obj_player.y) > dist) {
                    instance_create_layer(x1, y1, "Instances", choose(obj_inimigo))//, obj_inimigo_2));
                    inimigo_max -= 1;
					inimigo_cont += 1;
                }
            }
			
			if (saida > 0) {
                var chances = 1;
                var dist = 700;
                if (irandom(chances) == chances && point_distance(x1, y1, obj_player.x, obj_player.y) > dist) {
                    instance_create_layer(x1, y1, "Instances", obj_saida);
                    saida -= 1;
                }
            }
			
			if (mandioca > 0) {
                var chances = 10;
                var dist = 130;
                if (irandom(chances) == chances && point_distance(x1, y1, obj_player.x, obj_player.y) > dist) {
                    instance_create_layer(x1, y1, "Instances", obj_mandioca	);
                    mandioca -= 1;
                }
            }
        }
    }
}

mp_grid_add_instances(mp_grid,obj_parede,false);




