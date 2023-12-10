/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,image_index,x,y,width/sprite_width,height/sprite_height,0,c_white,1)
count = y

draw_set_font(DQ_font)
draw_set_valign(fa_top)
draw_set_halign(fa_left)



for(i = 0; i<items_len; i+=1)
{	
	//if i is on the left side
	if i%3 == 0 
	{	
		draw_text(x+border,count+space,global.ITEMS[item[i]])
	}
	else if i%3 == 1
	{
		draw_text(x+border+48+2,count+space,global.ITEMS[item[i]])
	}
	else
	{
		draw_text(x+border+96+2,count+space,global.ITEMS[item[i]])
		//increment y whenever row is finished
		count += space+8		
	}
}

