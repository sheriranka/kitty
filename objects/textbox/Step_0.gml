/// @description Insert description here
// You can write your code in this editor

//go to next page
if keyboard_check_pressed(ord("Z"))&&isFinished
{
	//show_debug_message(text)
	if( counter + 1 < array_length(text) )
	{counter += 1
	charCount = 0
	isFinished = false
		}
	else
	{
	instance_destroy(self)
	creator.alarm[1] = 1
	}	
}
else if keyboard_check_pressed(ord("Z")) {
	charCount =  string_length(text[counter])
	textPart = string_copy(text[counter], 1, charCount)
	isFinished = true
}