if(!global.pause){



var range = 100; // Declare a variável 'range' antes do switch

switch (estado) {
	
	case "vazio":
	sprite_index = spr_enemy_idle;
	estado = "parado";
	break;
	
    case "parado":
		sprite_index = meu_spr_idle;
        
        var linha = collision_line(x, y, obj_player.x, obj_player.y, obj_parede, false, false);

        if (distance_to_object(obj_player) <= range && !linha) {
            // Comece a seguir o jogador
            estado = "seguindo_jogador";
            tempo_sem_vista = 0; // Inicialize a variável de tempo sem vista
        }
        break;

    case "seguindo_jogador":
	
        sprite_index = meu_spr_walk;
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
		col_enemy = collision_rectangle(x-8, y-8, x+8, y+8, obj_parent_enemy, true, true)
		if col_enemy != noone and id < col_enemy.id{
			path_speed += (0 - path_speed)/2
		}
		else{
			path_speed += (velc - path_speed)/2	
		}
		
		if distance_to_object(obj_player) < 5{
			estado = "atacando"
		}
        break;
		
		case "atacando":
			sprite_index = meu_spr_attack;
			if distance_to_object(obj_player) < 5{
				time_attack += 1/room_speed
			}
			else{
				time_attack = 0
				estado = "seguindo_jogador"
				image_blend = c_white
			}

			if time_attack >= 0.5{
				time_attack = 0
				estado = "seguindo_jogador"
				image_blend = c_white
				obj_player.vida -= dano
			}
		break;
		
		
		
}

hit_alpha = lerp(hit_alpha, 0, 0.1);

if (life <= 0) {
	
    instance_destroy();
}
exit;
}


	


