var _data = video_draw();
var _status = _data[0];

if (_status == 0)
{
    var _surface = _data[1];

    draw_surface(_surface, 50, 50);
}

if keyboard_check_pressed (vk_anykey){
video_close()
room_goto(Room1)
}