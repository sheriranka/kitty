/// @description Insert description here
// You can write your code in this editor

box = noone

//if not isTame begin combat

//if global.enemyID[enemyID] {
if !global.allCats[instanceID]{
	//show_debug_message("Entering combat!");
	global.combatID = enemyID
	player_object.state = "fight"
	var trans = instance_create_depth(0,0,-9999,transition)
	trans.target = combatTestRoom
	//move player out f range of battle screen view
	trans.target_x = 380
	
	
	global.currFight = instanceID
	
	//save player location
	global.playerX = player_object.x
	global.playerY = player_object.y
}
//}
