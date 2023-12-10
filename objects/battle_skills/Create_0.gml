/// @description Insert description here
// You can write your code in this editor

width = 196
height = 80

display_set_gui_size(320, 240);

creator = noone
selected = 0
//base menu

//get skill list for current weapon
skills = global.skills[global.equipped]
len = 0
if global.equipList[global.equipped] > 12{
	len = 3
	}
else if global.equipList[global.equipped] > 7{
	len = 2
}
else if global.equipList[global.equipped] > 2{
	len = 1
}
else {len = 0}

//len = global.skillsAvailable[global.equipped]
//message in case not enough sp
submessage = noone

//pop up other menus selecting these


border = 8
space = 8


x = 80
y = 160

