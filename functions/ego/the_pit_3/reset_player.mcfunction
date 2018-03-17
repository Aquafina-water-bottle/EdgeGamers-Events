function ego:the_pit_3/clear_player
execute @s[score_TPpl_min=0,score_TPpl=0] ~ ~ ~ function ego:the_pit_3/give_items_in_lobby
execute @s[score_TPpl_min=2,score_TPpl=2] ~ ~ ~ function ego:the_pit_3/give_items_in_lobby
scoreboard teams join TP @s
scoreboard players set @s TPpl 1
