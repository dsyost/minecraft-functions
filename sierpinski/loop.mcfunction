#checks if the block above or to the left are both the same and if it is give the armor stand the white tag 
execute @e[tag=cursor] ~ ~ ~ detect ~ ~2 ~-1 wool 15 execute @e[tag=cursor] ~-1 ~ ~ detect ~ ~2 ~ wool 15 scoreboard players tag @e[tag=cursor] add white
execute @e[tag=cursor] ~ ~ ~ detect ~ ~2 ~-1 wool 0 execute @e[tag=cursor] ~-1 ~ ~ detect ~ ~2 ~ wool 0 scoreboard players tag @e[tag=cursor] add white

#if it didn't get the white tag give it the black tag
execute @e[tag=cursor] ~ ~ ~ execute @e[tag=!white,c=1] ~ ~ ~ scoreboard players tag @e[tag=cursor] add black

#place the wool depending on the tag
execute @e[tag=cursor] ~ ~ ~ execute @e[tag=black,c=1] ~ ~ ~ setblock ~ ~2 ~ wool 15
execute @e[tag=cursor] ~ ~ ~ execute @e[tag=white,c=1] ~ ~ ~ setblock ~ ~2 ~ wool 0

#reset the tag
execute @e[tag=cursor] ~ ~ ~ execute @e[tag=black,c=1] ~ ~ ~ scoreboard players tag @e[tag=cursor] remove black
execute @e[tag=cursor] ~ ~ ~ execute @e[tag=white,c=1] ~ ~ ~ scoreboard players tag @e[tag=cursor] remove white

#move the armor stand
tp @e[tag=cursor] ~1 ~ ~

#update x position on scoreboard
scoreboard players add @e[tag=cursor] x1 1
scoreboard players operation x sierpinski = @e[tag=cursor] x1

#if it hits the end of the line this block runs, and the first three run if its made a perfect square (and thus the program is over)
execute @e[tag=cursor,score_x1_min=65] ~ ~ ~ execute @e[tag=cursor,score_z1_min=65] ~ ~ ~ say done
execute @e[tag=cursor,score_x1_min=65] ~ ~ ~ execute @e[tag=cursor,score_z1_min=65] ~ ~ ~ gamerule commandBlockOutput true
execute @e[tag=cursor,score_x1_min=65] ~ ~ ~ execute @e[tag=cursor,score_z1_min=65] ~ ~ ~ gamerule gameLoopFunction clear
execute @e[tag=cursor,score_x1_min=65] ~ ~ ~ tp @e[tag=cursor] ~-65 ~ ~1
execute @e[tag=cursor,score_x1_min=65] ~ ~ ~ scoreboard players add z sierpinski 1
execute @e[tag=cursor,score_x1_min=65] ~ ~ ~ scoreboard players add @e[tag=cursor] z1 1
execute @e[tag=cursor,score_x1_min=65] ~ ~ ~ scoreboard players set @e[tag=cursor] x1 0