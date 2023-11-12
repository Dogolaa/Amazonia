var _data = video_draw();
var _status = _data[0];
var _vx = camera_get_view_x(view_camera[0]);
var _vy = camera_get_view_y(view_camera[0]);

if (_status == 0)
{
    var _surface = _data[1];

    draw_surface(_surface, _vx, _vy);
}

