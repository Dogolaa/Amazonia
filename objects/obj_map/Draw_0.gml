/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if !surface_exists(global.srf_weapons){
	global.srf_weapons = surface_create(room_width, room_height)
}
else{
	draw_surface(global.srf_weapons, 0, 0)
}