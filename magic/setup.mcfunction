#Armor stand to track the snowballs location for later
kill @e[tag=spellTracker]
summon armor_stand ~ ~ ~ {Tags:["spellTracker"],NoGravity:1b,Marker:1b,Invisible:1}

#basic setup
give @p snowball 1 0 {spell:fire,display:{Name:"Fire"}}
scoreboard objectives add rightClick stat.useItem.minecraft.snowball
scoreboard players set @p rightClick 0
scoreboard objectives add fireballs dummy
gamerule gameLoopFunction magic:loop
