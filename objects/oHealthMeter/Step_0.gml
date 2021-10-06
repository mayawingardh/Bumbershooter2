//oHealthMeter.x = oPlayer.x + 100;
//oHealthMeter.y = oPlayer.y + 10;

if (distance_to_object(oPlayer) > 10)
{
rSpeed = 20;
speed = min(speed + 0.5, 6);
var pointdir = point_direction(x, y, oPlayer.x + 40, oPlayer.y + 40);
image_angle += sin(degtorad(pointdir - image_angle)) * rSpeed;
direction = image_angle;
}
else
{
rSpeed = 4;
speed = min(speed + 0.1, 0.5);
image_angle += rSpeed;
direction = image_angle;	
}

switch (oPlayer.hitPoints)
{
	case "16" :
	image_index = 0;
	break;
	case "15" :
	image_index = 1;
	break;
	case "14" :
	image_index = 2;
	break;
	case "13" :
	image_index = 3;
	break;
	case "12" :
	image_index = 4;
	break;
	case "11" :
	image_index = 5;
	break;
	case "10" :
	image_index = 6;
	break;
	case "9" :
	image_index = 7;
	break;
	case "8" :
	image_index = 8;
	break;
	case "7" :
	image_index = 9;
	break;
	case "6" :
	image_index = 10;
	break;
	case "5" :
	image_index = 11;
	break;
	case "4" :
	image_index = 12;
	break;
	case "3" :
	image_index = 13;
	break;
	case "2" :
	image_index = 14;
	break;
	case "1" :
	image_index = 15;
	break;
	case "0" :
	image_index = 16;
	break;
}