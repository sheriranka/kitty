/// @description Insert description here
// You can write your code in this editor
up = keyboard_check_pressed(vk_up)
down = keyboard_check_pressed(vk_down)
right = keyboard_check_pressed(vk_right)
left = keyboard_check_pressed(vk_left)
accept = keyboard_check_pressed(ord("Z"))

if submenu == noone and !instance_exists(textbox) {
	global.equipped += right - left
	if global.equipped < 0 {global.equipped = 4}
	global.equipped = global.equipped%5
	
	
	selected += down - up
	if selected < 0 {selected = 2}
	selected = selected%3
}


if accept and !submenu {
	switch(selected)
	{
		case 0:
		{
		instance_destroy(self)
		playerDmg = global.equipFunc[global.equipped](global.currentAtk) + round(random_range(-3,3))
		creator.playerDmg = playerDmg
		creator.text = ["You attack!", string(playerDmg) + " damage dealt."]
		creator.alarm[0] = 1
		//do attack
		break
		}
		case 1:
		{
			//if skills are available open menu. if not dont
		//show_debug_message(string(global.equipped))
		//show_debug_message(string(global.EQUIP[global.equipped]))
		//show_debug_message(string(global.skillsAvailable[global.equipped]))
		
		if global.equipList[global.equipped] > 2 {
		
			show_debug_message("creating menu")
			submenu = instance_create_layer(80,48,"submenu",battle_skills)
			submenu.creator = self
		
		}
		break
		
		}
		case 2:
		{
		submenu = instance_create_layer(80,48,"submenu",battle_items)
		submenu.creator = self	
		break
		}
	}
}
