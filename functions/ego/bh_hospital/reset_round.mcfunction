say running ego:bh_hospital/reset_round
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHHpl_min=1,score_BHHpl=1] ~ ~ ~ function ego:bh_hospital/full_reset_player
scoreboard players set @s BHHgl 1
bd undisguiseall
scoreboard players reset Countdown BHH
scoreboard players reset Minutes BHH
scoreboard players reset Seconds BHH
scoreboard players set @s BHHst 0
