
draw_set_font(ft_menu);
var dist_saida = 5;
	draw_set_font(ft_menu);
	var dist = 55;
	var dists = 58;
	var gui_largura = display_get_gui_width();
	var gui_altura = display_get_gui_height();
	var x1 = gui_largura / 1.2 ;
	var y1 = gui_altura ;

if (distance_to_object(obj_player) <= dist_saida && instance_number(obj_parent_enemy) == 0 ){



	
		draw_set_halign(fa_bottom);
		draw_set_valign(fa_bottom);
		draw_set_color(c_yellow);
		draw_text(x1,y1,"Pressione E para ir ao proximo nivel");

}else if(distance_to_object(obj_player) <= dist_saida){


	
		draw_set_halign(fa_bottom);
		draw_set_valign(fa_bottom);
		draw_set_color(c_yellow);
		draw_text(x1,y1,"Mate todos os inimigos antes de sair");

}
draw_set_font(-1);
	
