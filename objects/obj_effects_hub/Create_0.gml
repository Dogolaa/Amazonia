/// @description Insert description here
// You can write your code in this editor


depth = -10000

cam = view_camera[0]
camx = camera_get_view_x(cam)
camy = camera_get_view_y(cam)

srf_luz_w = camera_get_view_width(cam)
srf_luz_h = camera_get_view_height(cam)
srf_luz = surface_create(srf_luz_w, srf_luz_h)

global.forca_sombra = 1