/// @description Insert description here
// You can write your code in this editor

var fx = layer_get_fx("Effect_1")
fx_set_parameter(fx, "g_FractalNoiseOffset", [-obj_cam_follower.x*4.5, -obj_cam_follower.y*4.5])
layer_set_fx("Effect_1", fx)


