draw_set_font(ft_menu);

var dist = 55;
var dists = 58;
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1 = gui_largura / 2;
var y1 = gui_altura / 2;

var text = "LOJA";
var outline_color = c_black; // Cor do contorno
var text_color = c_yellow; // Cor do texto
var gray_rect_color = c_gray; // Cor do retângulo cinza



// Desenhar o retângulo cinza no meio da tela
draw_set_color(gray_rect_color);
var rect_width = 1200; // Largura do retângulo
var rect_height = 500; // Altura do retângulo
var rect_x = x1 - (rect_width / 2); // Posição X do retângulo
var rect_y = y1 - (rect_height / 2); // Posição Y do retângulo
draw_rectangle(rect_x, rect_y, rect_x + rect_width, rect_y + rect_height, false);

draw_set_halign(fa_center);
draw_set_valign(fa_top);

// Desenhar o contorno preto
draw_set_color(outline_color);
draw_text_transformed(x1, y1 - (220), text, 1.1, 1.1, 0);

// Desenhar o texto amarelo por cima do contorno
draw_set_color(text_color);
draw_text(x1, y1 - (220), text);

draw_set_font(-1);


