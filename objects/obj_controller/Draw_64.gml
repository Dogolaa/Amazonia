/// @description Insert description here
// You can write your code in this editor

draw_set_font(ft_menu);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

var nivel_text = "Nivel " + string(global.nivel + 1) + "                                        Inimigos " + string(instance_number(obj_parent_enemy));;
draw_text(0, 0, nivel_text);







