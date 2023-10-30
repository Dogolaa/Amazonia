


function ilumina(xx, yy, r, cor) {
    if instance_exists(obj_effects_hub){
		if surface_exists(obj_effects_hub.srf_luz){
	        surface_set_target(obj_effects_hub.srf_luz);
        
	        gpu_set_blendmode(bm_subtract);
			xx1 = xx - obj_effects_hub.camx - r
			xx2 = xx - obj_effects_hub.camx + r
			yy1 = yy - obj_effects_hub.camy - r
			yy2 = yy - obj_effects_hub.camy + r
	        draw_ellipse_color(xx1, yy1, xx2, yy2, make_color_hsv(cor, 200, 210), c_black, false);
	        gpu_set_blendmode(bm_normal);

	        surface_reset_target();
		}
    }
}

