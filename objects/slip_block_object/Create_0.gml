/// @description Insert description here
// You can write your code in this editor

function init() {
ySpd = 0;
xSpd = 0;
slidingx = false;
slidingy = false;
}

//initialize collision

init();


function xMove(spd) {
	if place_meeting(x+spd,y,wall_object) or place_meeting(x+spd,y,block_stopper)
	{return false}
	else
	{xSpd=spd}
	slidingx = true
	return true
}


function yMove(spd) {
	if place_meeting(x,y+spd,wall_object) or place_meeting(x,y+spd,block_stopper)
	{return false}
	else
	{ySpd=spd}
	slidingy = true
	return true;
	
}
