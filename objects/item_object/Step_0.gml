/// @description Insert description here
// You can write your code in this editor

//detect if interacting
if not box and not instance_exists(player_menu) {
	if place_meeting(x-1,y,player_object) && player_object.isFacing == 0 && keyboard_check_pressed(ord("Z"))
	{
		if !global.allItems[itemID]{
			
		box = instance_create_layer(0,0,"text",textbox)
		if(array_length(global.inventory) >11){
				box.text = ["Your inventory is full..."]
		}
		else{
		box.text = fullText
		array_push(global.inventory,itm)
		global.allItems[itemID] = 1	
			}
		box.portrait = objectPortrait
		box.creator = self
			
		}
		else
		{
		box = instance_create_layer(0,0,"text",textbox)
		box.text = emptyText
		box.portrait = objectPortrait
		box.creator = self
		}
	}

	else if place_meeting(x+1,y,player_object) && player_object.isFacing == 2 && keyboard_check_pressed(ord("Z"))
	{
		if !global.allItems[itemID]{
			
		box = instance_create_layer(0,0,"text",textbox)
		if(array_length(global.inventory) >11){
				box.text = ["Your inventory is full..."]
		}
		else{
		box.text = fullText
		array_push(global.inventory,itm)
		global.allItems[itemID] = 1	
			}
		box.portrait = objectPortrait
		box.creator = self
			
		}
		else
		{
		box = instance_create_layer(0,0,"text",textbox)
		box.text = emptyText
		box.portrait = objectPortrait
		box.creator = self
		}
	}
	else if place_meeting(x,y+1,player_object) && player_object.isFacing == 1 &&keyboard_check_pressed(ord("Z"))
	{
		if !global.allItems[itemID]{
			
		box = instance_create_layer(0,0,"text",textbox)
		if(array_length(global.inventory) >11){
				box.text = ["Your inventory is full..."]
		}
		else{
		box.text = fullText
		array_push(global.inventory,itm)
		global.allItems[itemID] = 1		
			}
		box.portrait = objectPortrait
		box.creator = self
			
		}
		else
		{
		box = instance_create_layer(0,0,"text",textbox)
		box.text = emptyText
		box.portrait = objectPortrait
		box.creator = self
		}
	}
	else if place_meeting(x,y-1,player_object) && player_object.isFacing == 3 && keyboard_check_pressed(ord("Z"))
	{
		if !global.allItems[itemID]{
			
		box = instance_create_layer(0,0,"text",textbox)
		if(array_length(global.inventory) >11){
				box.text = ["Your inventory is full..."]
		}
		else{
		box.text = fullText
		array_push(global.inventory,itm)
		global.allItems[itemID] = 1	
			}
		box.portrait = objectPortrait
		box.creator = self
			
		}
		else
		{
		box = instance_create_layer(0,0,"text",textbox)
		box.text = emptyText
		box.portrait = objectPortrait
		box.creator = self
		}
	}
}


//if !hasItem {image_index = 1}
/*
if place_meeting(x,y,player_object) and not instance_exists(textbox)
{instance_create_layer(x,y,"text",textbox)}
*/

