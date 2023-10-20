var tecla_direita = keyboard_check(ord("D"));
var tecla_esquerda = keyboard_check(ord("A"));
var tecla_cima = keyboard_check(ord("W"));
var tecla_baixo = keyboard_check(ord("S"));

var teclas = (tecla_direita - tecla_esquerda != 0) || (tecla_baixo - tecla_cima != 0);

var dist_saida = 5;
var tecla_sair = keyboard_check(ord("E"));
var teclas_sair = (tecla_sair != 0);


	if (distance_to_object(obj_saida) <= dist_saida && tecla_sair != 0) {
		room_goto_next();
	}






if(velh != 0) image_xscale = sign(velh);

if(teclas != 0) {
	sprite_index = spr_player_walk;
}else{
	sprite_index = spr_player_idle;
}

move_dir = point_direction(0, 0, tecla_direita - tecla_esquerda, tecla_baixo - tecla_cima);

velh = lengthdir_x(velc * teclas, move_dir);
velv = lengthdir_y(velc * teclas, move_dir);

if (place_meeting(x + velh, y, obj_parede))
{
    while (!place_meeting(x + sign(velh), y, obj_parede))
    {
        x += sign(velh);
    }
    velh = 0;
}

x += velh;

if (place_meeting(x, y + velv, obj_parede))
{
    while (!place_meeting(x, y + sign(velv), obj_parede))
    {
        y += sign(velv);
    }
    velv = 0;
}

y += velv;

with(my_weapon){
	
	var mb;
	
	
	if(automatic){
		mb = mouse_check_button(mb_left);
	}else{
		mb = mouse_check_button_pressed(mb_left);
	}
	weapon_dir = point_direction(x,y,mouse_x,mouse_y);
	if(mb){
		atirar();
	}
}



