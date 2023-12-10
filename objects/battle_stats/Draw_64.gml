/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite_index,image_index,x,y,width/sprite_width,height/sprite_height,0,c_white,1)
count = y

draw_set_font(DQ_font)
draw_set_valign(fa_top)
draw_set_halign(fa_center)

draw_text(32+x,count+8,"name")
count+=space+8

//make this display hp change

draw_set_halign(fa_left)

/*
for(i = 0; i<stats_len; i+=1)
{	
	//if i is on the left side
	if i%2 == 0 
	{	
		draw_text(x+border,count+space,stats[i])
	}
	else
	{
		draw_text(x+border+32+2,count+space,stats[i])
		count += space+8		
	}
}
*/

draw_text(x+border,count+space,"HP")
draw_text(x+border+32+2,count+space,global.battleHp)
count += space+8
draw_text(x+border,count+space,"SP")
draw_text(x+border+32+2,count+space,global.battleSp)
