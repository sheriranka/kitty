/// @description Insert description here
// You can write your code in this editor


event_inherited()


if(running_left){
	x -= 1
	if !turn{
	sprite_index = cat_running_left
	alarm[2] = 16*distance +1
	turn = true
	}
}else{
	x += 1
	if !turn{
	sprite_index = cat_running_right
	alarm[2] = 16*distance +1
	turn = true
	}
}
