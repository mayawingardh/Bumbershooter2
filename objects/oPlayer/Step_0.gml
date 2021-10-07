oPlayer.y += fallSpeed - braking;

jumpHeight = currentAltitude - oPlayer.y;

//speed -= 1;

//if (speed < 0)
//{
//	speed = 0;
//}

if (hitPoints < 1)
{
	deathTimer += delta_time / 100000;
	oPlayer.image_alpha = 0;
	oPlayer.moveSpeed = 0;
	
	if (hitPoints < 1 )
	
	{
		hitPoints=0;
	}

	audio_play_sound(Falldeath, 5, false);
	
	if (deathTimer > 30)
	{
		room_goto(rHighScore);
	}
		
}

if (jumping == true)
{
	jumpTimer += delta_time / 1000000;
	if (oPlayer.y > (currentAltitude - 140) && jumpTimer < 0.4)
	{
	oPlayer.y -= fallSpeed * 0.95;
	}
	else 
	{
		jumping = false;
		jumpTimer = 0;
	}
	
}


if place_meeting(x, y + 1, oGround)
	{
		//image_index = 0;
		touchingGround = true;
		braking = fallSpeed;
	}

else
	{
		touchingGround = false;
	}


if (touchingGround == false)
{
	impactStart = oPlayer.y - impactEnd;
	
	if (parachuteActive == false)
	{
		impactSpeed = impactStart * delta_time / 1000000;
		
		braking -= 0.5;
		if (braking < 0)
		{
			braking = 0;
		}
	}

	if (parachuteInitiate)
		{
			braking = 1;
			parachuteInitiate = false;
		}

	if (parachuteActive)
		{
			impactSpeed -= (impactSpeed * delta_time / 100000);    
			
			braking += 0.15;
			if (braking > fallSpeed - 2)
				{
					braking = fallSpeed - 2;
				}
		}
}


/// @description Player movment

moveRight = keyboard_check(ord("D"))
moveLeft = keyboard_check(ord("A"))

moveUp = keyboard_check(vk_space)
moveDown = keyboard_check(vk_down)


if ((moveSpeed + acc) < 8)
{
	acc = 0.08;
}
else
{
	acc = 0;
}

moveSpeed += acc;
vx = ((moveRight- moveLeft) * moveSpeed);


vy = ((moveDown- moveUp) * moveSpeed);


if (vx==0 && vy==0 )
{
	// changes idile sprites based on last direction
	
	switch dir
	{
		case 0: sprite_index = PlayerIdleL; break;
		case 2: sprite_index= PlayerIdlR; break;
		//case 3: sprite_index = spr_playerDown; break; 
		//case 1: sprite_index = spr_playerUp; break; 
	}
}

if (vx != 0|| vy!=0)
{
	x += vx
	y += vy;
	
	//Change sprites on diffrent directions
	if (vx > 0)
	
	{
		sprite_index = Mspr_player_runR
		
		dir = 0;
	}	
	
	if (vx < 0)	
	{
		sprite_index =Mspr_Player_RunL
	
		dir = 2;	
	}
	
	
}	

if (vy > 0)
	{
		sprite_index = 
		dir = 3;
	}
	
//	if (vy < 0)
//	{
//		sprite_index= PlayerHangingR
//		dir =1 ;
//	}
	

