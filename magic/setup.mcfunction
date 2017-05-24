#Armor stand to track the snowballs location for later
kill @e[tag=spellTracker]
summon armor_stand ~ ~ ~ {Tags:["spellTracker"],NoGravity:1b,Marker:1b,Invisible:1}

#basic setup
give @p snowball 1 0 {spell:fire,display:{Name:"Fire"}}
give @p snowball 1 0 {spell:lightning,display:{Name:"Lightning"}}
scoreboard objectives add rightClick stat.useItem.minecraft.snowball
scoreboard players set @p rightClick 0
scoreboard objectives add fireballs dummy
scoreboard objectives add lightningballs dummy
scoreboard players tag @p add wizard
gamerule gameLoopFunction magic:loop