/// @description Insert description here
// You can write your code in this editor
diffX = 0;
diffY = 0;
enemyX = self.id.x;
enemyY = self.id.y;

show_debug_message(direction);

if (distance_to_object(oPlayer) < 500)
{
speed = min(speed + 0.5, 5);
var pointdir = point_direction(x, y, oPlayer.x, oPlayer.y);
image_angle += sin(degtorad(pointdir - image_angle)) * rSpeed;
direction = image_angle;
}
else
{
speed = min(speed + 0.5, 5);
image_angle++;
direction = image_angle;	
}

if (direction >= 0 && direction > 180)
{
	sprite_index = spr_enemy_pet_2;
}
else if (direction >= 180 && direction > 360)
{
	sprite_index = spr_enemy_pet;
}