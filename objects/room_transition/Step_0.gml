/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,player_object) && !instance_exists(transition){

	transitionInst = instance_create_depth(0,0,-9999,transition)
	transitionInst.target_x = target_x - 1
	transitionInst.target_y = target_y - 7
	transitionInst.target = target_room

}
