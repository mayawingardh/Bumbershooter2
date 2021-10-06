//oHealthMeter.x = oPlayer.x + 100;
//oHealthMeter.y = oPlayer.y + 10;

if (distance_to_object(oPlayer) > 200)
{
rSpeed = 15;
speed = min(speed + 0.5, 15);
var pointdir = point_direction(x, y, oPlayer.x + 40, oPlayer.y + 40);
image_angle += sin(degtorad(pointdir - image_angle)) * rSpeed;
direction = image_angle;
}
else
{
rSpeed = 4;
speed = min(speed + 0.5, 1);
image_angle++;
direction = image_angle;	
	
}