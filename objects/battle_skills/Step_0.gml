/// @description Insert description here
// You can write your code in this editor



up = keyboard_check_pressed(vk_up)
down = keyboard_check_pressed(vk_down)
right = keyboard_check_pressed(vk_right)
left = keyboard_check_pressed(vk_left)
accept = keyboard_check_pressed(ord("Z"))
back = keyboard_check_pressed(ord("X"))


selected += down*2 - up*2 + right - left
if selected < 0 {selected = 0}
if len != 0
{selected = selected%len}

//do skill selection later
//pending

if accept && !submessage{
	//pass selection to battle menu
	
	
	if global.battleSp < global.costs[global.equipped][selected]{
		
		submessage = instance_create_layer(32,144,"submenuUP",textbox)
		submessage.text = ["Not enough SP!"]
		submessage.creator = self
		
	
	}
	//if not enough sp to use
	//create box that says not enough sp
	//back to menu
	//alarm 1 possibly
	
	else{
	//if enough sp to use
	instance_destroy(self)
	creator.selected = selected
	effectText = []
	damage = 0
	
	//text of effect 
	switch(global.skillEffect[global.equipped][selected]){
	case 0:
		effectText = ["You feel happy.","Your motivation returned!"]
		creator.effect = "Heal"
	break;
	
	case 1:
		damage  = floor(2.5 *global.equipFunc[global.equipped](global.currentAtk)) + round(random_range(-3,3))
		effectText = ["Cat liked that.", "Cat became more tame!", "Lost "+string(damage)+"HP!"]
		creator.effect = "Damage1"
		creator.damage = damage
	break;
	
	case 2:
		damage =  4 * global.equipFunc[global.equipped](global.currentAtk) + round(random_range(-3,3))
		effectText = ["Cat REALLY liked that.", "Cat became WAY more tame!","Lost "+string(damage)+"HP!"]
		creator.damage = damage
		creator.effect = "Damage2"
	break;
	
	case 3:
		effectText = ["Cat lets it's guard down.", "Cat's attacks became weaker!"]
		creator.effect = "AtkDown1"
	break;
		
	case 4:
		effectText = ["Cat REALLY lets it's guard down.", "Cat's attacks became weaker!"]
		creator.effect = "AtkDown2"
	break;
	
	case 5:
		effectText = ["Cat is distracted!"]
		creator.effect = "Stun"
	
	break;
	
	
	
	}
	
	
	creator.text = effectText
	creator.alarm[2] = 1
	//sp Cost
	global.battleSp -= global.costs[global.equipped][selected]
	
	
	}
}


if back
{
	instance_destroy(self)
	creator.alarm[1] = 1
}
