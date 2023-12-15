/*if(global.pause){
	
	hspeed = 0;
    vspeed = 0;
	exit;

}
*/
//if (global.dialogo == false) {

var tecla_direita = keyboard_check(ord("D"));
var tecla_esquerda = keyboard_check(ord("A"));
var tecla_cima = keyboard_check(ord("W"));
var tecla_baixo = keyboard_check(ord("S"));

var teclas = (tecla_direita - tecla_esquerda != 0) || (tecla_baixo - tecla_cima != 0);

var dist_saida = 5;
var dist_ir_templo = 15;
var tecla_sair = keyboard_check(ord("E"));
var teclas_sair = (tecla_sair != 0);

if (distance_to_object(obj_saida) <= dist_saida && tecla_sair != 0  && instance_number(obj_parent_enemy) == 0){
	global.nivel++
	ini_open("save_do_game")
	ini_write_real("vida", "0", global.vida)
	ini_write_real("nivel", "0", global.nivel)
	ini_close()
    room_restart();
}

if (distance_to_object(obj_ir_templo) <= dist_ir_templo){
    room_goto(Room2);
}

depth = -y;

if (velh != 0) {
    image_xscale = sign(velh);
}

if (teclas != 0) {
    sprite_index = spr_player_walk;
} else {
    sprite_index = spr_player_idle;
}


if (tecla_direita) {
    image_xscale = 1;  // Define a escala para a direita
} else if (tecla_esquerda) {
    image_xscale = -1;  // Define a escala para a esquerda
}

if tecla_cima {
    vspeed -= acc;
}else if tecla_baixo {
    vspeed += acc;
}else{
	vspeed *= 0.8
}

if tecla_direita {
    hspeed += acc;
}else if tecla_esquerda {
    hspeed -= acc;
}else{
    hspeed *= 0.8;
}

breaking = 20;
while (place_meeting(x + hspeed, y, obj_parent_wall) && breaking > 0) {
    breaking--;
    hspeed *= 0.9;
    if breaking <= 1 {
        hspeed = 0;
    }
}
breaking = 20;
while (place_meeting(x + hspeed, y + vspeed, obj_parent_wall) && breaking > 0) {
    breaking--;
    vspeed *= 0.9;
    if breaking <= 1 {
        vspeed = 0;
    }
}

hspeed = clamp(hspeed, -max_velc, max_velc);
vspeed = clamp(vspeed, -max_velc, max_velc);

if place_meeting(x, y, obj_parent_enemy) {
    hspeed = clamp(hspeed, -max_velc * 0.3, max_velc * 0.3);
	vspeed = clamp(vspeed, -max_velc * 0.3, max_velc * 0.3);
}

//}

/*move_dir = point_direction(0, 0, tecla_direita - tecla_esquerda, tecla_baixo - tecla_cima);

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
*/



#region Dialogo
if distance_to_object(obj_par_npcs) <= 10{
	if keyboard_check_pressed(ord("E")) and global.dialogo == false{
		var _npc = instance_nearest(x,y, obj_par_npcs);
		var _dialogo = instance_create_layer(x,y, "Dialogo", obj_dialogo);
		global.dialogo = true
		_dialogo.npc_nome = _npc.nome;
	}
}
#endregion




//coisas da vida//
if global.vida <=0 {
	instance_destroy(my_weapon)
	instance_destroy(camera_follower)
	instance_destroy(obj_controller)
	instance_destroy(obj_effects_hub)
	speed = 0
	room_goto(Room3);
}


