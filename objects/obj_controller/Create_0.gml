
global.max_vida = 100
global.vida = global.max_vida
global.dead = false

global.pontos = 0
global.nivel = 0

modo = 0
fx_blur = layer_get_fx("Effect_1")
fx_blur_radius = 0
fx_vig = layer_get_fx("Effect_2")
fx_vig_strength = fx_get_parameter(fx_vig, "g_VignetteEdges")
cos_index = 0

time_transition = 0