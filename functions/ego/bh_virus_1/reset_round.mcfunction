execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHVR1pl_min=2,score_BHVR1pl=2] ~ ~ ~ function ego:bh_virus_1/full_reset_player
scoreboard players set @s BHVR1gl 1
execute @a ~ ~ ~ function ego:bh_virus_1/undisguise_player
scoreboard players reset Countdown BHVR1
scoreboard players reset Minutes BHVR1
scoreboard players reset Seconds BHVR1
scoreboard players set @s BHVR1st 0
