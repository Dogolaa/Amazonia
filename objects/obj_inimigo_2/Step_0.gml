var range = 100; // Declare a variável 'range' antes do switch

switch (estado) {
    case "parado":
        sprite_index = spr_enemy2_idle;
        var linha = collision_line(x, y, obj_player.x, obj_player.y, obj_parede, false, false);

        if (distance_to_object(obj_player) <= range && !linha) {
            // Comece a seguir o jogador
            estado = "seguindo_jogador";
            tempo_sem_vista = 0; // Inicialize a variável de tempo sem vista
        }
        break;

    case "seguindo_jogador":
        sprite_index = spr_enemy2_walk;
        var x1 = x;
        var y1 = y;
        var x2 = (obj_player.x div 32) * 32 + 16;
        var y2 = (obj_player.y div 32) * 32 + 16;

        if (mp_grid_path(obj_map.mp_grid, caminho, x1, y1, x2, y2, true)) {
            path_start(caminho, velc, path_action_stop, false);
        }

        if (instance_exists(obj_player)) {
            if (obj_player.x > x) {
                image_xscale = 1;
            } else if (obj_player.x < x) {
                image_xscale = -1;
            }
        }

        // Verifique se o jogador ainda está visível
        if (distance_to_object(obj_player) > range || collision_line(x, y, obj_player.x, obj_player.y, obj_parede, false, false)) {
            // Jogador não está mais visível
            tempo_sem_vista += 1; // Incrementa o tempo sem vista a cada frame

            if (tempo_sem_vista >= 200) {
                estado = "parado";
            }
        } else {
            // Jogador ainda está visível, redefina o tempo sem vista
            tempo_sem_vista = 0;
        }

// Verificar colisão entre inimigos
var inimigo_colisor = instance_position(x, y, obj_inimigo);
if (inimigo_colisor != noone && inimigo_colisor != id) {

    var dist = point_distance(x, y, inimigo_colisor.x, inimigo_colisor.y);
    if (dist < 80) {
     
        var dir = point_direction(x, y, inimigo_colisor.x, inimigo_colisor.y);
        var move_x = lengthdir_x(1, dir);
        var move_y = lengthdir_y(1, dir);


        x -= move_x + 2;
        y -= move_y + 2;
    }
}

        break;
}

hit_alpha = lerp(hit_alpha, 0, 0.1);

if (life <= 0) {
    instance_destroy();
}





	


