/// @description Insert description here
// You can write your code in this editor


if slidingx {
	if !place_meeting(x+xSpd,y,wall_object) && !place_meeting(x+xSpd,y,block_stopper)
	{
		x += xSpd;
	}
	else
	{
		xSpd = 0;
		slidingx = false
	}
}

if slidingy {
 if !place_meeting(x,y+ySpd,wall_object) && !place_meeting(x,y+ySpd,block_stopper)
	{
	y += ySpd;
	depth = -bbox_bottom;
	}
	else
	{
	ySpd = 0
	slidingy = false
	}
}
