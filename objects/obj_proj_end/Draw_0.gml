/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_self()

speed *= 0.9
image_xscale = max(image_xscale * 0.9, 0.6)
image_yscale = image_xscale

if place_meeting(x, y, obj_parede){
	speed = 0 
}

if abs(speed) <= 0.1{
	speed = 0
	surface_set_target(global.srf_weapons)
	draw_self()
	surface_reset_target()
	instance_destroy(self)
}
