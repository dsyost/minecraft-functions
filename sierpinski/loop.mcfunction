execute @e[tag=cursor] ~ ~ ~ detect ~ ~2 ~-1 wool 15 execute @e[tag=cursor] ~-1 ~ ~ detect ~ ~2 ~ wool 15 scoreboard players tag @e[tag=cursor] add white
execute @e[tag=cursor] ~ ~ ~ detect ~ ~2 ~-1 wool 0 execute @e[tag=cursor] ~-1 ~ ~ detect ~ ~2 ~ wool 0 scoreboard players tag @e[tag=cursor] add white
execute @e[tag=cursor] ~ ~ ~ execute @e[tag=!white,c=1] ~ ~ ~ scoreboard players tag @e[tag=cursor] add black
execute @e[tag=cursor] ~ ~ ~ execute @e[tag=black,c=1] ~ ~ ~ setblock ~ ~2 ~ wool 15
execute @e[tag=cursor] ~ ~ ~ execute @e[tag=white,c=1] ~ ~ ~ setblock ~ ~2 ~ wool 0
execute @e[tag=cursor] ~ ~ ~ execute @e[tag=black,c=1] ~ ~ ~ scoreboard players tag @e[tag=cursor] remove black
execute @e[tag=cursor] ~ ~ ~ execute @e[tag=white,c=1] ~ ~ ~ scoreboard players tag @e[tag=cursor] remove white
tp @e[tag=cursor] ~1 ~ ~
scoreboard players add @e[tag=cursor] x1 1
scoreboard players operation x sierpinski = @e[tag=cursor] x1
execute @e[tag=cursor,score_x1_min=65] ~ ~ ~ execute @e[tag=cursor,score_z1_min=64] ~ ~ ~ say done
execute @e[tag=cursor,score_x1_min=65] ~ ~ ~ execute @e[tag=cursor,score_z1_min=64] ~ ~ ~ gamerule gameLoopFunction clear
execute @e[tag=cursor,score_x1_min=65] ~ ~ ~ tp @e[tag=cursor] ~-65 ~ ~1
execute @e[tag=cursor,score_x1_min=65] ~ ~ ~ scoreboard players add z sierpinski 1
execute @e[tag=cursor,score_x1_min=65] ~ ~ ~ scoreboard players add @e[tag=cursor] z1 1
execute @e[tag=cursor,score_x1_min=65] ~ ~ ~ scoreboard players set @e[tag=cursor] x1 0