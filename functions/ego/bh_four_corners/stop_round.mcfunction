scoreboard players set @s BHFCgl 3
execute @s[score_BHFCchi_min=0,score_BHFCchi=0] ~ ~ ~ title @a title {"text":"The seekers won!","color":"yellow"}
execute @s[score_BHFCchi_min=0,score_BHFCchi=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHFC","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Four Corners","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 526354106"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The seekers won!","color":"yellow"}]}
execute @s[score_BHFCchi_min=1] ~ ~ ~ title @a title {"text":"Time!","color":"green"}
execute @s[score_BHFCchi_min=1] ~ ~ ~ title @a subtitle {"text":"The hiders won!","color":"green"}
execute @s[score_BHFCchi_min=1] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHFC","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Four Corners","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 526354106"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The time is up! The hiders won!","color":"yellow"}]}
execute @s[score_BHFCchi_min=1] ~ ~ ~ scoreboard players reset Seconds BHFC
execute @s[score_BHFCchi_min=1] ~ ~ ~ scoreboard players reset Minutes BHFC
execute @a ~ ~ ~ function ego:bh_four_corners/undisguise_player
scoreboard players set @s BHFCst 5
