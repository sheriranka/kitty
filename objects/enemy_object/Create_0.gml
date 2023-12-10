/// @description Insert description here


//enemy stats generation code

enemyID = global.combatID


hp = noone
currhp = hp
atk = noone
isDead = false




function generateStats(){
	switch(enemyID){

	case 0: //brownie
		hp = 50 * (global.currentRank)
		currhp = hp
		atk = 5 * (global.currentRank/2 + 1)
		image_index = 1
	break

	case 1: //benny
		hp = 35 * (global.currentRank*1.5 + 1)
		currhp = hp
		atk = 4 * (global.currentRank/2 + 1)
		image_index = 0
	break
	
	case 2: //chaaya
		hp = 60 * (global.currentRank/2)
		currhp = hp
		atk = 3 * (global.currentRank + 1)
		image_index = 2
	break
	
	case 3: //denam, kitty 1
		hp = 20 * (global.currentRank*2)
		currhp = hp
		atk = 1 * (global.currentRank/2 + 1)
		image_index = 3
	break
	
	case 4: //dina
		hp = 30 * (global.currentRank)
		currhp = hp
		atk = 1 * (global.currentRank*3 + 1)
		image_index = 4
	break
	
	case 5: //frenchie
		hp = 37 * (global.currentRank*1.7 + 1)
		currhp = hp
		atk = 7 * (global.currentRank/2 + 1)
		image_index = 5
	break
	
	case 6: //kenji
		hp = 57 * (global.currentRank*2 + 1)
		currhp = hp
		atk = 3 * (global.currentRank)
		image_index = 6
	break
	
	case 7: //random calico
		hp = 33 * (global.currentRank*0.4 + 1)
		currhp = hp
		atk = 5  * (global.currentRank * 1.5)
		image_index = 7
	break
	
	case 8: //titan
		hp = 40 * (global.currentRank*1.9 + 1)
		currhp = hp
		atk = 7 * (global.currentRank + 1)
		image_index = 8
	break
	
	case 9: //sofia, mom cat
		hp = 450 
		currhp = hp
		atk = 15 
		image_index = 7
	break
	
	}}
