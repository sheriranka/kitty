/// @description Insert description here
// You can write your code in this editor



up = keyboard_check_pressed(vk_up)
down = keyboard_check_pressed(vk_down)
right = keyboard_check_pressed(vk_right)
left = keyboard_check_pressed(vk_left)
accept = keyboard_check_pressed(ord("Z"))
back = keyboard_check_pressed(ord("X"))


if !submenu {
	selected += down*2 - up*2 + right - left
	if selected < 0 {selected = 0}
	selected = selected%4
}


if accept and !submenu {
	switch(selected)
	{
		//open items menu
		case 0:
		{
		submenu = instance_create_layer(80,48,"submenu",items_menu)
		submenu.creator = self	
		break
		}
		//open stats menu
		case 1:
		{
		submenu = instance_create_layer(80,48,"submenu",stats_menu)
		submenu.creator = self		
		break
		}
		//save game
		case 2:
		{break}
		//load game
		case 3:
		{break}
	}
}

if back and !submenu {instance_destroy(self)}
