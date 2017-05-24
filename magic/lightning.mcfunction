#checks if the player is holding the lightning spell
execute @e[tag=wizard] ~ ~ ~ scoreboard players tag @a add lightningspell {SelectedItem:{tag:{spell:lightning}}}

#turns all snowballs leaving the player into "lightning spells"
execute @e[tag=lightningspell] ~ ~ ~ entitydata @e[type=snowball,c=1,r=3] {Tags:["lightningball","spell"],NoGravity:1}
execute @e[tag=lightningspell] ~ ~ ~ execute @e[tag=lightningball] ~ ~ ~ particle magicCrit ~ ~ ~ 0 .1 .1 .1 25

#the snowball death clock
execute @e[tag=lightningspell] ~ ~ ~ scoreboard players add @e[tag=lightningball] lightingballs 1
execute @e[tag=lightningspell] ~ ~ ~ kill @e[score_lightingballs_min=25,tag=lightningball]

#the damage part of the spell
execute @e[tag=lightningspell] ~ ~ ~ execute @e[tag=spellTracker] ~ ~ ~ scoreboard players tag @e[r=5,type=!player] add hit {HurtTime:10s}
execute @e[tag=lightningspell] ~ ~ ~ execute @e[tag=hit] ~ ~ ~ summon lightning_bolt ~ ~2 ~
execute @e[tag=lightningspell] ~ ~ ~ scoreboard players tag @e[tag=hit] remove hit

#clean up
scoreboard players tag @e[tag=lightningspell] remove lightningspell