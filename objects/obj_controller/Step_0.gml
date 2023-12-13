/// @description Insert description here
// You can write your code in this editor

if room == Room1 {
	fx_blur = layer_get_fx("Effect_1")
	fx_vig = layer_get_fx("Effect_2")
	fx_vig_strength = fx_get_parameter(fx_vig, "g_VignetteEdges")
    if modo <= 1 {
        if keyboard_check_pressed(vk_anykey) {
            modo = 1
        }
        fx_blur_radius += (20 * modo - fx_blur_radius) / 10
        fx_set_parameter(fx_blur, "g_Radius", fx_blur_radius)

        cos_index += 1
        fx_vig_strength[1] = 1 + dcos(cos_index) / 10
        fx_set_parameter(fx_vig, "g_VignetteEdges", fx_vig_strength)
    } else if modo == 2 {
        fx_vig_strength[1] = max(0, fx_vig_strength[1] - 0.02)
        fx_set_parameter(fx_vig, "g_VignetteEdges", fx_vig_strength)
        if fx_vig_strength[1] <= 0 {
            time_transition += 1 / room_speed
            if time_transition > 2 {
                room_goto_next()
                fx_vig = layer_get_fx("Effect_2")
                fx_set_parameter(fx_vig, "g_VignetteEdges", fx_vig_strength)
                cos_index = 180
            }
        }
    }
} else if room == Room2 {
	fx_blur = layer_get_fx("Effect_1")
    fx_vig = layer_get_fx("Effect_2")
    fx_set_parameter(fx_vig, "g_VignetteEdges", fx_vig_strength)
    if fx_vig_strength[1] < 0.9 {
        fx_vig_strength[1] += 0.02
    } else if modo == 3 {
        fx_vig_strength[1] = max(0, fx_vig_strength[1] - 0.02)
        fx_set_parameter(fx_vig, "g_VignetteEdges", fx_vig_strength)
        if fx_vig_strength[1] <= 0 {
            time_transition += 1 / room_speed
            if time_transition > 2 {
                room_goto(Room2)
                fx_vig = layer_get_fx("Effect_2")
                fx_set_parameter(fx_vig, "g_VignetteEdges", fx_vig_strength)
                cos_index = 180
            }
        }
    } else {
        cos_index += 1
        fx_vig_strength[1] = 1.2 + dcos(cos_index) / 5
    }
}
