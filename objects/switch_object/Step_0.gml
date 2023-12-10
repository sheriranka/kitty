/// @description Insert description here
// You can write your code in this editor

//toggle open/closed state when player interacts
if place_meeting(x-1,y,player_object) && player_object.isFacing == 0 && keyboard_check_pressed(ord("Z"))
{
	isOpen = !isOpen
}

else if place_meeting(x+1,y,player_object) && player_object.isFacing == 2 && keyboard_check_pressed(ord("Z"))
{
	isOpen = !isOpen
}
else if place_meeting(x,y+1,player_object) && player_object.isFacing == 1 &&keyboard_check_pressed(ord("Z"))
{
	isOpen = !isOpen
}
else if place_meeting(x,y-1,player_object) && player_object.isFacing == 3 && keyboard_check_pressed(ord("Z"))
{
	isOpen = !isOpen
}

//if door is closed and doesnt already exist, create it

if array_length(door) < 1 and !isOpen
{
	for(var i = 0; i<array_length(doorx);i++)
	
	array_push(door, instance_create_layer(doorx[i],doory[i],"objects",openGate))
	
	}

//if door exists and is open, delete it
else if isOpen and array_length(door)>0 {
	for(var i = 0; i<array_length(door);i++)
		instance_destroy(door[i])
	door = []
}
