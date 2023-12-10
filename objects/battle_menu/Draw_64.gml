/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite_index,image_index,x,y,width/sprite_width,height/sprite_height,0,c_white,1)
count = y

draw_set_font(DQ_font)
draw_set_valign(fa_top)

draw_set_halign(fa_center)

txt = "<"+global.EQUIP[global.equipped]+">"

draw_text_color(x+32,y+space,txt,c_yellow,c_navy,c_orange,c_lime,1)

op_y = y+space*3

draw_set_halign(fa_left)

for(i = 0; i<op_len; i+=1)
{	
	draw_text(x+border,op_y,options[i])
	if i == selected
	{
		draw_text(x+2,op_y,"o")
	}
	op_y += space*2
}
