/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite_index,image_index,x,y,width/sprite_width,height/sprite_height,0,c_white,1)
count = y
//is kinda stretched fix later
draw_sprite_ext(stats_sprite,0,128,64,1,1,0,c_white,1)
//draw_sprite(stats_sprite,0,128,64)

draw_set_font(DQ_font)
draw_set_valign(fa_top)
draw_set_halign(fa_left)



for(i = 0; i<stat_len; i+=1)
{	
	//if i is on the left side
	if i%2 == 0 
	{	
		draw_text(x+border,count+space,stats[i])
	}
	else
	{
		draw_text(x+border+32+2,count+space,stats[i])
		//increment y whenever row is finished
		count += space+8		
	}
}

