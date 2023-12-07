/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

depth = -y
image_speed = 0

var cima = collision_point(x+16, y-16, obj_bloqueia, true, true)

if cima != noone{
	cima.image_index = 1
}


