x = oPlayer.x;
y = oPlayer.y - 35;
image_angle = point_direction(x, y , mouse_x, mouse_y);

switch (oPlayer.ammo)
{
	case "5" :
	image_index = 0;
	break;
	case "4" :
	image_index = 1;
	break;
	case "3" :
	image_index = 2;
	break;
	case "2" :
	image_index = 3;
	break;
	case "1" :
	image_index = 4;
	break;
	case "0" :
	image_index = 5;
	break;
}
depth = 0;