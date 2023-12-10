/// @description Insert description here
// You can write your code in this editor

box = noone

//check if mom is tame first
if !global.allCats[momCat.instanceID]{

	global.combatID = momCat.enemyID
	player_object.state = "fight"
	var trans = instance_create_depth(0,0,-9999,transition)
	trans.target = combatTestRoom
	//move player out f range of battle screen view
	trans.target_x = 380
	
	
	global.currFight = momCat.instanceID
	
	//save player location
	global.playerX = player_object.x
	global.playerY = player_object.y
}

//if not isTame begin combat

//if global.enemyID[enemyID] {
else if !global.allCats[instanceID]{
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

