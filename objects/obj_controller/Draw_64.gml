/// @description Insert description here
// You can write your code in this editor

draw_set_font(ft_menu);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

var nivel_text = "Nivel " + string(global.nivel + 1);
draw_text(0, 0, nivel_text);


draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_color(c_white);

var points_text = "Pontos " + string(global.pontos);
draw_text(0, 0, points_text);





