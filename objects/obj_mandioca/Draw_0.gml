draw_set_font(ft_menu);
var dist_mandioca = 5;
	draw_set_font(ft_menu);
	var dist = 55;
	var dists = 58;
	var gui_largura = display_get_gui_width();
	var gui_altura = display_get_gui_height();
	var x1 = gui_largura / 1.2 ;
	var y1 = gui_altura ;

if (distance_to_object(obj_player) <= dist_mandioca){



	
		draw_set_halign(fa_bottom);
		draw_set_valign(fa_bottom);
		draw_set_color(c_yellow);
		draw_text(x1,y1,"Voce encontrou uma Mandioca +10 hp");

}

draw_set_font(-1);



