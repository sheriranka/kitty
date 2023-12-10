/// @description Insert description here
// You can write your code in this editor

//format will be x,y where x is attack,defend,etc and y will only be
//if you use a skill or item where you must evaluate what was selected

//set player x and y to where they were before
playerX = 0
playerY = 0



playerSel = noone
enemySel = noone
enemyDmg = noone
playerDmg = noone
enemyID = global.combatID
text = noone

//for leveling
usedwpn = [false,false,false,false,false]

//for selection type items skills attack etc
selectionType = noone
target = noone
effect = noone
damage = 0

//ailments for enemy
stun = 0
atkdown = 0


//skill selected from skill list
//selected = noone

/*
function execute(){}


//function to call textboxes
function displaytext(){
		box = instance_create_layer(0,0,"text",textbox)
		box.text = ["name does damage","cat damages back nyaaa"]
		box.portrait = noone
		box.creator = self
		box.name = noone
}
*/

enum states {
	battleStart,
	playerChoose,
	playerAction,
	catAction,
	catEndAction,
	battleEnd,
	gameOver,
	gainStats,
	empty
}

state = states.battleStart

submenu = noone
statsmenu = noone
box = noone
enemyObj = noone

function nextState(){
	switch(state){
		case states.battleStart:
			state = states.playerChoose
			break;
			
		case states.playerChoose:
			state = states.playerAction
			break;
		//if cat defeated go to end. if not go to cat turn
		case states.playerAction:
			if enemyObj.isDead {state = states.battleEnd}
			else {state = states.catAction}
			break;
			
		case states.catAction:
			state = states.catEndAction
			break;
		//loop back to player turn
		case states.catEndAction:
			if(global.battleHp>0)
			{state = states.playerChoose}
			else{state = states.gameOver}
			break;
			
		case states.gameOver:
		
		state = states.empty
		var trans = instance_create_depth(0,0,-9999,transition)
		trans.target = testRoom		
		trans.target_x = global.playerX
		trans.target_y = global.playerY
		player_object.state = "walk"
		break;
		
		case states.battleEnd:
		//level up wpns hp sp etc chance
		state = states.gainStats
		break;
		
		case states.gainStats:
		//go back to map
		global.catsPet += 1
		global.allCats[global.currFight] = 1 //set cat to tame
		if global.catsPet%5 = 0{
		 global.currentRank += 1
		}
		state = states.empty
		var trans = instance_create_depth(0,0,-9999,transition)
		trans.target = testRoom	
		trans.target_x = global.playerX
		trans.target_y = global.playerY
		player_object.state = "walk"
		break;
	}
}
