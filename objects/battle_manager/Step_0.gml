/// @description Insert description here
// You can write your code in this editor

switch (state) {
	
	//battle GUI setup
	
	case states.battleStart:

	if(!statsmenu)
	statsmenu = instance_create_layer(0,0,"submenu",battle_stats)
	
	if(!box){
		box = instance_create_layer(32,144,"submenu",textbox)
		box.text = ["Cat appears!"]
		box.creator = self
	}
	
	if(!enemyObj){
		enemyObj = instance_create_layer(96,0,"stuff",enemy_object)
		enemyObj.generateStats()
	}
	
	global.battleHp = global.currentHp
	global.battleSp = global.currentSp
	
	break;
	
	//display player selection menu
	
	case states.playerChoose:
	
	if(!submenu){
	submenu = instance_create_layer(0,0,"submenu",battle_menu)
	submenu.creator = self
	}
	
	break;
	
	case states.playerAction:
	
	if(!box){
		box = instance_create_layer(32,144,"submenu",textbox)
		box.text = text
		box.creator = self
		
		//determine player move 
		
		if(selectionType == "attack"){
			//remove hp
			enemyObj.currhp -= playerDmg
			//set weapon as used
			if(!usedwpn[global.equipped]){
				usedwpn[global.equipped] = true
			}}
		
		else if(selectionType == "item"){
		//determine item used
		
		//later make each effect its own function
		switch(effect){
			case "Stun":
				stun = 2
				break;
			case "Damage2":
				enemyObj.currhp -= 100
				break;
			case "AtkDown2":
				atkdown = 5
				break;
			case "AtkDown1":
				if(atkdown<3) atkdown = 3 //if so it doenst lower higegr attack down
				break;
			case "Damage1":
				enemyObj.currhp -= 50
				break;
			case "Heal":
			//heal 50% of hp
				global.battleHp += floor(global.currentHp/2)
				if(global.battleHp > global.currentHp) global.battleHp = global.currentHp
				break;	
		
		}}
		else if(selectionType == "skill"){
			switch(effect){
			case "Stun":
				stun = 2;
				break;				
			case "Damage2":
				enemyObj.currhp -= damage
				break;
			case "AtkDown2":
				atkdown = 5
				break;
			case "AtkDown1":
				if(atkdown<3) atkdown = 3 //if so it doenst lower higegr attack down
				break;
			case "Damage1":
				enemyObj.currhp -=  damage
				break;
			case "Heal":
			//heal 50% of hp
				global.battleHp += floor(global.currentHp/2)
				if(global.battleHp > global.currentHp) global.battleHp = global.currentHp
				break;	
			}
		}
	}
	
	break;
	
	case states.catAction:
	
	//only display text if cat is stunned
	
	if(!box){		
		if(stun>0){
		box = instance_create_layer(32,144,"submenu",textbox)
		box.creator = self
		box.text = ["Cat is stunned!"]
		}
		else
		nextState()
		}
	
	break;
	
	case states.catEndAction:
	
	if(!box){
		box = instance_create_layer(32,144,"submenu",textbox)
		box.creator = self
		
		
		if(stun>0){
			box.text = ["Cat was unable to move."]
			stun -= 1
			}
		
		else{
		
			
		//flavor text
		//pick of 3 options
		temp = floor(random_range(0,1)*3);
		if temp == 0{
			atkMsg = "Cat hisses at you!"
			enemyDmg = floor(enemyObj.atk * 1.3) + round(random_range(-3,3))
		}
		else if temp == 1{
			atkMsg = "Cat gives you a nasty glare..."
			enemyDmg = floor(enemyObj.atk * 0.9) + round(random_range(-3,3))
		}
		else {
			atkMsg = "Cat swipes at you!"
			enemyDmg = floor(enemyObj.atk * 1.9) + round(random_range(-3,3))
		}
		
		if(atkdown > 0){
			enemyDmg = floor(enemyDmg*0.75)
			atkdown -= 1
			}
		
		box.text = [atkMsg, "Cat dealt "+ string(enemyDmg) + " damage!"]
		global.battleHp -= enemyDmg	
		//not go below 0
		if global.battleHp < 0 {global.battleHp = 0}
		}
		}
		
		
	
	break;
	
	case states.battleEnd:
	
	if(!box){
		box = instance_create_layer(32,144,"submenu",textbox)
		box.creator = self
		box.text = ["You're done!"]
		}
	
	break;
	
	case states.gameOver:
	
	if(!box){
		box = instance_create_layer(32,144,"submenu",textbox)
		box.text = ["You're done for!"]
		box.creator = self}
	
	break;

	case states.gainStats:
	
	
	//display statups
	if(!box){
		
	text = []
	
	//hp
	chance = random_range(1, 3);
	if(chance < 2){
		statup = round(random_range(5, 10));
		global.currentHp += statup
		array_push(text,"HP went up by " + string(statup))
	}
	//sp
	chance = round(random_range(1, 2));
	if(chance < 2){
		statup = round(random_range(5, 8));
		global.currentSp += statup
		array_push(text,"SP went up by " + string(statup))
	}
	
	chance = round(random_range(1, 2));
	if(chance < 2){
		statup = round(random_range(2, 5));
		global.currentAtk += statup
		array_push(text,"Attack went up by " + string(statup))
	}
	
	//wpn lvl
	for(i = 0; i<5; i++){
		chance = round(random_range(1, 2));
		if(chance > 1 and usedwpn[i]){
			global.equipList[i] += 1
			array_push(text, global.EQUIP[i] + " level went up.")
			
			
			
			
			
			//add new skill if level up
			if global.equipList[i] == 3 || global.equipList[i] == 8 || global.equipList[i] == 13 {
				
			//skills available how many indexes out of big array
			//global.skillsAvailable[i] += 1
			
			//message for new skill learned			
			array_push(text, global.EQUIP[i] + " skill learned.")
			
			}
				
		}
	}
	
	
	
	//this is in case you dont get any growths so it doesnt flip out
	//because the text array is empty
	//fix later
	array_push(text, "That's all!")
		
		
	box = instance_create_layer(32,144,"submenu",textbox)
	box.text = text
	box.creator = self
	}
	
	break;

}
