#the armor stand tracks the farthers spell from the player
tp @e[tag=spellTracker] @e[tag=spell,c=-1]

#the main loop
function magic:fire
function magic:lightning
scoreboard players set @a rightClick 0