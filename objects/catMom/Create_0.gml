/// @description Insert description here
// You can write your code in this editor

event_inherited()

//x and y for cats attached to mom
//change this for instance

instanceID = 0

enemyID = 9

kittensx = [x-16,x+16,x-16]
kittensy = [y,y,y-16]
kittens = [noone, noone, noone]
//create kittens
for (i = 0; i<array_length(kittens); i++){
	
	kittens[i] = instance_create_layer(kittensx[i],kittensy[i],layer,catBaby)
	kittens[i].momCat = self
	kittens[i].enemyID = round(random_range(0,1)) + 3 //id 3 is kitten 1 is kitten 2
	//set instance id for kitties as 3 over mom cat
	kittens[i].instanceID = instanceID + 1 + i
	kittens[i].setSprite()

}
//assign kitten catMom object to self
//create objects etc etc


//when kittens interacted with, if mom is not tame, initiate fight with mom
