#kills and summons armor stands
kill @e[tag=cursor]
summon armor_stand ~ ~ ~ {Tags:["cursor"],NoGravity:1b,Invisible:1}

#setup for scoreboard
scoreboard objectives add x1 dummy
scoreboard players set @e[tag=cursor] x1 0
scoreboard objectives add z1 dummy
scoreboard players set @e[tag=cursor] z1 1
scoreboard objectives add sierpinski dummy
scoreboard players set x sierpinski 1
scoreboard players set z sierpinski 1
scoreboard objectives setdisplay sidebar sierpinski

#place the first black wool block
execute @e[tag=cursor] ~ ~ ~ setblock ~ ~2 ~ wool 15

#turns command block output off just so chats not so spammy
gamerule commandBlockOutput false

#sets up the gameloop to loop
gamerule gameLoopFunction sierpinski:loop