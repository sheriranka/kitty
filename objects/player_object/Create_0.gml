/// @description Insert description here
// You can write your code in this editor

xSpeed = 0;
ySpeed = 0;

moveSpeed = 1;

standing = [player_sprite_right, player_sprite_up, player_sprite_left, player_sprite_down];
moving = [player_sprite_move_right, player_sprite_move_up, player_sprite_move_left,player_sprite_move_down];

isFacing = DOWN;

state = "walk"

//states = fight, walking



//collision startup code

function pushColX(xSpeed) {
	//check if in contact with block
	instBlock = instance_place(x+xSpeed, y, movable_block_object);
	
	//if block instance in contact exists test collision block instance
	if instBlock {
		if place_meeting(x+xSpeed, y, instBlock)
		{
				if xSpeed < 0 and isFacing == 2 { //2 is LEFT
				canMove = instBlock.xMove(xSpeed);
				return canMove
				}
				if xSpeed > 0 and isFacing == 0 { //0 is RIGHT
				canMove = instBlock.xMove(xSpeed);
				return canMove
				}
			} }	
	//if is in contact but not touching collision, return false
	else if place_meeting(x+xSpeed,y,instBlock) {return false}
	
	//if not touching anything, return true
	else {return true}
}

//same logic as pushColX

function pushColY(ySpeed) {
	
	instBlock = instance_place(x, y+ySpeed, movable_block_object);
	
	if instBlock
	{
		if place_meeting(x,y+ySpeed,instBlock)
		{
			if ySpeed < 0 and isFacing == 1 { // 1 is UP but it's not working with 'UP' fsr
				canMove = instBlock.yMove(ySpeed);
				return canMove
			}
			else if ySpeed > 0 and isFacing == 3 { // 3 is DOWN
				canMove = instBlock.yMove(ySpeed);
				return canMove
			}
		}}
	else if place_meeting(x,y+ySpeed,instBlock) {return false}
	else {return true}
}

function wallColX(xSpeed) {
	if place_meeting(x+xSpeed, y, invisible_wall_object) or place_meeting(x+xSpeed, y, text_object)
	{return false}
	else
	{return true}
	
}

function wallColY(ySpeed) {
	if place_meeting(x, y+ySpeed, invisible_wall_object) or place_meeting(x, y+ySpeed, text_object)
	{return false}
	else
	{return true}
	
}

