/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if !surface_exists(srf_weapons){
	srf_weapons = surface_create(room_width, room_height)
}
else{
	draw_surface(srf_weapons, 0, 0)
}


