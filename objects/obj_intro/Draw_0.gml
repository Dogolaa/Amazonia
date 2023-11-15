/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_self();

draw_set_font(ft_skip);
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1 = gui_largura / 2;
var y1 = gui_altura - 20;



	
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	
	

	 draw_set_color(c_yellow);

		
	
	draw_text(x1,y1,"Pressione E para pular");



draw_set_font(-1);

