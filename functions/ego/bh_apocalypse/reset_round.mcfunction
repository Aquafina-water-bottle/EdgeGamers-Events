execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHApl_min=2,score_BHApl=2] ~ ~ ~ function ego:bh_apocalypse/full_reset_player
scoreboard players set @s BHAgl 1
execute @a ~ ~ ~ function ego:bh_apocalypse/undisguise_player
scoreboard players reset Countdown BHA
scoreboard players reset Minutes BHA
scoreboard players reset Seconds BHA
scoreboard players set @s BHAst 0
