/// @description Insert description here
// You can write your code in this editor

objectText = [
"meow?",
"meow meow",
"mrrrow"
]

objectPortrait = noone

box = noone

name = noone

enemyID = 0 //change on instance

instanceID = 0 //change on instance

//isTame = global.allCats[instanceID]


function setSprite(){

//switchc display sprite
//implement later
	switch(enemyID){
	
		case 0:
			sprite_index = catsleep77
		break;
		
		case 1:
			sprite_index = catsleepblack
		break;
		
		case 2:
			sprite_index = catsleepblack
		break;
		
		case 3:
			sprite_index = kittengray
		break;
		
		case 4:
			sprite_index = kittencalico
		break;
		
		case 5:
			sprite_index = catsleep77
		break;
		
		case 6:		
			sprite_index = global.orangeSprites[irandom(4)]
		break;
		
		case 7:
			sprite_index = global.calicoSprites[irandom(4)]
		break;
		
		case 8:
			sprite_index = global.graySprites[irandom(4)]
		break;
	
	}



}



