kill @e[tag=cursor]
summon armor_stand ~5 ~ ~ {Tags:["cursor"],NoGravity:1b,Invisible:0}
scoreboard objectives add x1 dummy
scoreboard players set @e[tag=cursor] x1 0
scoreboard objectives add z1 dummy
scoreboard players set @e[tag=cursor] z1 0
scoreboard objectives add sierpinski dummy
scoreboard players set x sierpinski 1
scoreboard players set z sierpinski 1
scoreboard objectives setdisplay sidebar sierpinski
execute @e[tag=cursor] ~ ~ ~ setblock ~ ~2 ~ wool 15
gamerule commandBlockOutput false
gamerule gameLoopFunction sierpinski:loop