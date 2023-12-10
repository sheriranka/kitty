/// @description Insert description here
// You can write your code in this editor


function yMove(yspd){
	if place_meeting(x,y+yspd,push_block_object) or place_meeting(x,y+yspd, invisible_wall_object)
	 {return;}
	else{y+=yspd}

}

function xMove(xspd){
	if place_meeting(x+xspd,y,push_block_object) or place_meeting(x+xspd,y,invisible_wall_object)
	 {return;}
	else{x+=xspd}
}
