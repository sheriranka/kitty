/// @description Insert description here
// You can write your code in this editor
var up = keyboard_check_pressed(vk_up)
var down = keyboard_check_pressed(vk_down)
var right = keyboard_check_pressed(vk_right)
var left = keyboard_check_pressed(vk_left)
var accept = keyboard_check_pressed(ord("Z"))
var back = keyboard_check_pressed(ord("X"))


selected += down*3 - up*3 + right - left
if selected < 0 {selected = 0}
if len != 0
{selected = selected%len}
	
	
//do skill selection later
//pending

//lose item on use

if accept {
	switch(item[selected]){
		case 0:
			creator.text = ["Catnip used!","Cat was distracted!"]
			creator.effect = "Stun" //stuns for 2 turns
			break;
		case 1:
			creator.text = ["Cat treats used!", "Cat became way more tame!", "Lost 100HP!"]
			creator.effect = "Damage2" //stronger dmg
			break;
		case 2:
			creator.text = ["Gave cat wet food!", "Cat's attacks became weaker!"]
			creator.effect = "AtkDown2" //stronger attack down
			break;
		case 3:
			creator.text = ["Gave cat dry food!", "Cat's attacks became weaker!"]
			creator.effect = "AtkDown1"
			break;
		case 4:
			creator.text = ["Gave cat water!", "Cat became more tame!", "Lost 50HP!"]
			creator.effect = "Damage1"
			break;
		case 5:
			creator.text = ["Ate cookie!", "Your motivation was revitalized!"]
			creator.effect = "Heal"
			break;
	
	}
	array_delete(global.inventory, selected, 1)
	instance_destroy(self)
	creator.alarm[0] = 1
}

if back
{
	instance_destroy(self)
	creator.alarm[1] = 1
}
