/// @description Insert description here
// You can write your code in this editor


if state == "walk" {

pressedRight = keyboard_check(vk_right) or keyboard_check(ord("D"));
pressedLeft = keyboard_check(vk_left) or keyboard_check(ord("A"));
pressedDown = keyboard_check(vk_down) or keyboard_check(ord("S"));
pressedUp = keyboard_check(vk_up) or keyboard_check(ord("W"));

if !instance_exists(textbox) and !instance_exists(player_menu) {
	
	if(pressedRight - pressedLeft != 0){
		state = "walking"
		xSpeed = (pressedRight - pressedLeft) * moveSpeed;
		//move for 16 frames
		alarm[0] = 16
		}
	if(pressedDown - pressedUp != 0){
		state = "walking"
		ySpeed = (pressedDown - pressedUp) * moveSpeed;
		alarm[0] = 16}
}
//else {xSpeed = 0; ySpeed = 0}

mask_index = standing[3];

if xSpeed > 0 {isFacing = RIGHT;}
if xSpeed < 0 {isFacing = LEFT;}
if ySpeed > 0 {isFacing = DOWN;}
if ySpeed < 0 {isFacing = UP;}

if ySpeed == 0 and xSpeed == 0 {sprite_index = standing[isFacing]}

//check wall collision

if not wallColX(xSpeed) {xSpeed = 0}
	
if not wallColY(ySpeed) {ySpeed = 0}
	
//check pushable block collision

if not pushColX(xSpeed) {xSpeed = 0}

if not pushColY(ySpeed) {ySpeed = 0}


//	x+= xSpeed;
//	y+= ySpeed;

//	sprite_index = moving[isFacing];




//depth

depth = -bbox_bottom

if keyboard_check_pressed(ord("X")) and !instance_exists(textbox) and !instance_exists(player_menu)
{
	instance_create_layer(16,16,"text",player_menu)
	sprite_index = standing[isFacing]
}

}

if state == "walking" {
	x+= xSpeed;
	y+= ySpeed;

	sprite_index = moving[isFacing];

}
