/// @description Insert description here
// You can write your code in this editor

if !surface_exists(srf_luz){
	srf_luz = surface_create(srf_luz_w, srf_luz_h)
}

camx = camera_get_view_x(cam)
camy = camera_get_view_y(cam)

draw_set_alpha(1)

gpu_set_blendmode(bm_subtract)
draw_surface(srf_luz, camx, camy)
gpu_set_blendmode(bm_normal)

surface_set_target(srf_luz)
draw_set_color(make_colour_hsv(0, 0, 230))
draw_rectangle(0, 0, srf_luz_w, srf_luz_h, false)
surface_reset_target()

ilumina(mouse_x, mouse_y, 40, 10)
ilumina(obj_player.x, obj_player.y, 100, 10)
ilumina(obj_saida.x, obj_saida.y, 100, 15)
ilumina(obj_saida.x, obj_saida.y, 70, 25)



