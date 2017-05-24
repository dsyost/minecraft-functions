#checks if  the player is holding the fire spell
execute @e[tag=wizard] ~ ~ ~ scoreboard players tag @p add firespell {SelectedItem:{tag:{spell:fire}}}

#turns all snowballs leaving the player int "fire spells"
execute @e[tag=firespell] ~ ~ ~ entitydata @e[type=snowball,c=1,r=3] {Tags:["fireball","spell"],NoGravity:1}
execute @e[tag=firespell] ~ ~ ~ execute @e[tag=fireball] ~ ~ ~ particle flame ~ ~ ~ 0 .1 .1 .1 25

#the snowball death clock
execute @e[tag=firespell] ~ ~ ~ scoreboard players add @e[tag=fireball] fireballs 1
execute @e[tag=firespell] ~ ~ ~ kill @e[score_fireballs_min=25,tag=fireball]

#the damage part of the spell
execute @e[tag=firespell] ~ ~ ~ execute @e[tag=spellTracker] ~ ~ ~ scoreboard players tag @e[r=5,type=!player] add hit {HurtTime:10s}
execute @e[tag=firespell] ~ ~ ~ entitydata @e[tag=hit] {Fire:200s,FallDistance:10.0f,HurtTime:9s}
execute @e[tag=firespell] ~ ~ ~ scoreboard players tag @e[tag=hit] remove hit

#clean up
scoreboard players tag @e[tag=firespell] remove firespell