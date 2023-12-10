// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
#macro RIGHT 0
#macro UP 1
#macro LEFT 2
#macro DOWN 3

//randomize for game
randomize()


//INITIALIZE STATS AND NUMBERS

#macro bRank 1
#macro maxRank 10
global.currentRank = bRank
//stats
#macro minHp 50
#macro minSp 20
#macro minAtk 10
global.currentHp = minHp
global.currentSp = minSp
global.currentAtk = minAtk
global.battleHp = global.currentHp
global.battleSp = global.currentSp
#macro maxHp 250
#macro maxSp 100
#macro maxAtk 50

//wpn lvl
#macro maxWpn 20
//weapon types
global.rodLvl = 2
global.teaserLvl = 9
global.miceLvl = 1
global.pointerLvl = 4
global.bellLvl = 1
global.equipped = 0

global.equipList = [global.rodLvl,global.teaserLvl,global.miceLvl,global.pointerLvl,global.bellLvl]

global.EQUIP = ["Rod","Teaser","Mouse","LaserPtr","Bell"]

//inventory
global.inventory = [0,0,1,5,2,0,1]

global.ITEMS = ["catnip","treats","wet food","dry food","water","cookie"] //item ids 0,1,2,3,4


//skills
//skill names pending

global.rodSkills = ["Sweep 15","Swingin' 20","Reel-in 45"]
global.teaserSkills = ["Swoosh 20","Tickle 20","Spinny 50"]
global.pointerSkills = ["Fast move 30","To-forehead 30","Polygon 60"]
global.bellSkills = ["On beat 15","Sing-along 40","Allegro 30"]
global.miceSkills = ["Kiss 35","Squeak 25","Run-along 10"]

global.skills = [global.rodSkills,global.teaserSkills,global.miceSkills,global.pointerSkills,global.bellSkills]

//skill effects
//0 heal
//1 strong atk
//2 stronger attack
//3 atk down
//4 atk down+
//5 stun

global.rodEffect = [1,3,2]
global.teaserEffect = [0,4,2]
global.pointerEffect = [5,3,2]
global.bellEffect = [5,0,1]
global.miceEffect = [0,4,5]

global.skillEffect = [global.rodEffect,global.teaserEffect,global.miceEffect,global.pointerEffect,global.bellEffect]


//skill costs
global.rodCosts = [15,20,45]
global.teaserCosts = [20,20,50]
global.pointerCosts = [30,30,60]
global.bellCosts = [15,40,30]
global.miceCosts = [35,25,10]

global.costs = [global.rodCosts,global.teaserCosts,global.miceCosts,global.pointerCosts,global.bellCosts]

//available skills by weapon level

//global.rodAvailable = []
//global.teaserAvailable = []
//global.pointerAvailable = []
//global.bellAvailable = []
//global.miceAvailable = []

//options are 0 1 2 and 3
//global.skillsAvailable = [0,0,0,0,0]

//array of functions for damage calculations

//attack + wpn lvl * wpn multiplier
//fix later

global.rodFunc = function(attack){ return (round(attack/2 + 1.2*global.rodLvl)) }
global.teaserFunc = function(attack){ return (round(attack/2 + 0.7*global.teaserLvl)) }
global.pointerFunc = function(attack){ return (round(attack/2 +1.5*global.pointerLvl)) }
global.bellFunc = function(attack){ return (round(attack/2 + 1.0*global.bellLvl)) }
global.miceFunc = function(attack){ return (round(attack/2 + 0.9*global.miceLvl)) }

global.equipFunc = [global.rodFunc,global.teaserFunc,global.miceFunc,global.pointerFunc,global.bellFunc]


//empty skills , each array is skills for a weapon and each index is wpn type


//all enemies in game

global.combatID = noone

//cats pet before finishing game

global.catsPet = 0


//player x y location save when transfering to battle room

global.playerX = 0
global.playerY = 0


//instance id

global.allCats = array_create(75,0) //75 cats

global.allItems = array_create(100,0) // all items



global.currFight = 0 //instance of current fight, to see if cat is tamed
global.currType = 0 //check which enemy youre fighting, which type of cat

//check if cat has been pet
function catIsTame(instanceID){
	return allCats[instanceID]	
}

//reset cat tame 

function catTame(instanceID){
	allCats[instanceID] = 1
}

//reset all room cat tame

function resetTame(IDarray){
	//pass array of id instance indexes
	//will set them to false
	//when leaving room


}

//reset all cats

//function pending


//tame arrays
//room 1 = array of indexes
//etc

testRoomCats = [0,1,2]
room2Cats = [3,4,5]


global.orangeSprites = [catlickorange, catlookorange, catpaworange, catsitorange, catswipeorange]
global.calicoSprites = [catlickcalico, catlookcalico, catpawcalico, catsitcalico, catswipecalico]
global.graySprites = [catlick, catlook, catpaw, catsit, catswipe]