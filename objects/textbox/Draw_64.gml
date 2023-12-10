


display_set_gui_size(320, 240);



x = 32

if player_object.y > room_height - 108
{y = 0}
else
{y = 144}

//draw box
draw_sprite_ext(sprite_index,image_index,x,y,width/sprite_width,height/sprite_height,0,c_white,1)

texty = y

//set font
draw_set_font(DQ_font)

textx = x+ 16
//add to x if theres a portrait
if portrait != noone{
	textx+=48
}

if name != noone {
	draw_text(textx,texty+8,name)
	texty += 12
}

if charCount < string_length(text[counter])
{charCount += textSpeed}

textPart = string_copy(text[counter], 1, charCount)

draw_text_ext(textx,texty+8,textPart,str_height, box_width)
