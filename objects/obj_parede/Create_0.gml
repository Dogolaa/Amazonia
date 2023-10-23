/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

depth = -y
image_speed = 0

var cima = collision_point(x+16, y-16, obj_parede, true, true)

if cima != noone{
	cima.image_index = 1
}

if irandom(4) == 0{
	var f = instance_create_depth(x+16, y+22, depth-1, obj_tocha)
	f.p = self
}