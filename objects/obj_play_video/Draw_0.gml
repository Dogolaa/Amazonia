var _data = video_draw();
var _status = _data[0];
var _vx = camera_get_view_x(view_camera[0]);
var _vy = camera_get_view_y(view_camera[0]);

if (_status == 0)
{
    var _surface = _data[1];

    draw_surface(_surface, _vx, _vy);
}

if keyboard_check_pressed (vk_anykey){
video_close()
room_goto(Room1)
}




draw_set_font(ft_skip);

var dist = 55;
var dists = 58;
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1 = gui_largura / 2;
var y1 = gui_altura - 20; // Ajuste a altura desejada para centralizar na parte inferior

// Desenhar o quadrado preto
var opcao = "PRESSIONE E PARA PULAR"; // Adicione o texto desejado
var texto_largura = string_width(opcao);
var texto_altura = string_height(opcao);

// Ajustar o tamanho do retângulo para envolver o texto
var padding = 10; // Espaço extra em torno do texto
var square_x = x1 - texto_largura / 2 - padding; // Centraliza o retângulo em relação ao texto
var square_y = y1 - texto_altura / 2 - padding; // Centraliza o retângulo verticalmente
var square_width = texto_largura + 2 * padding;
var square_height = texto_altura + 2 * padding;

// Desenhar o quadrado preto
draw_set_color(c_black);
draw_rectangle(square_x, square_y, square_x + square_width, square_y + square_height, false);

// Desenhar o texto sobre o quadrado preto
draw_set_halign(fa_center); // Alinhamento central horizontal
draw_set_valign(fa_middle); // Alinhamento central vertical
draw_set_color(c_white); // Cor do texto

draw_text(x1, y1, opcao);

draw_set_font(-1);




