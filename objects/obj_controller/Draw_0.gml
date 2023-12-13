if !surface_exists(global.srf_weapons){
	global.srf_weapons = surface_create(room_width, room_height)
}
else{
	depth = -10
	draw_surface(global.srf_weapons, 0, 0)
}


