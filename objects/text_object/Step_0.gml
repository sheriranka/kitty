/// @description Insert description here
// You can write your code in this editor


//detect if interacting
if not box and player_object.state == "walk" {
	if place_meeting(x-1,y,player_object) && player_object.isFacing == 0 && keyboard_check_pressed(ord("Z"))
	{
		box = instance_create_layer(0,0,"text",textbox)
		box.text = objectText
		box.portrait = objectPortrait
		box.creator = self
		box.name = name
	}

	else if place_meeting(x+1,y,player_object) && player_object.isFacing == 2 && keyboard_check_pressed(ord("Z"))
	{
		box = instance_create_layer(0,0,"text",textbox)
		box.text = objectText
		box.portrait = objectPortrait
		box.creator = self
		box.name = name
	}
	else if place_meeting(x,y+1,player_object) && player_object.isFacing == 1 &&keyboard_check_pressed(ord("Z"))
	{
		box = instance_create_layer(0,0,"text",textbox)
		box.text = objectText
		box.portrait = objectPortrait
		box.creator = self
		box.name = name
	}
	else if place_meeting(x,y-1,player_object) && player_object.isFacing == 3 && keyboard_check_pressed(ord("Z"))
	{
		box = instance_create_layer(0,0,"text",textbox)
		box.text = objectText
		box.portrait = objectPortrait
		box.creator = self
		box.name = name
	}
}


/*
if place_meeting(x,y,player_object) and not instance_exists(textbox)
{instance_create_layer(x,y,"text",textbox)}
*/

