scoreboard players add @s DirtRcd 1
execute @s[score_DirtRcd_min=20,score_DirtRcd=20] ~ ~ ~ tellraw @a[score_gSA_min=1,score_gSA=1] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"DirtR","color":"gray","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Dirt Race","color":"gray"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 2140645621"}},{"text":"]","color":"gray"},{"text":": "},{"text":"5","color":"yellow","bold":"true"}]}
execute @s[score_DirtRcd_min=20,score_DirtRcd=20] ~ ~ ~ execute @a[score_gSA_min=1,score_gSA=1] ~ ~ ~ playsound minecraft:block.note.pling voice @a[c=1] ~ ~ ~ 0.5
execute @s[score_DirtRcd_min=40,score_DirtRcd=40] ~ ~ ~ tellraw @a[score_gSA_min=1,score_gSA=1] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"DirtR","color":"gray","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Dirt Race","color":"gray"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 2140645621"}},{"text":"]","color":"gray"},{"text":": "},{"text":"4","color":"yellow","bold":"true"}]}
execute @s[score_DirtRcd_min=40,score_DirtRcd=40] ~ ~ ~ execute @a[score_gSA_min=1,score_gSA=1] ~ ~ ~ playsound minecraft:block.note.pling voice @a[c=1] ~ ~ ~ 1
execute @s[score_DirtRcd_min=60,score_DirtRcd=60] ~ ~ ~ tellraw @a[score_gSA_min=1,score_gSA=1] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"DirtR","color":"gray","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Dirt Race","color":"gray"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 2140645621"}},{"text":"]","color":"gray"},{"text":": "},{"text":"3","color":"yellow","bold":"true"}]}
execute @s[score_DirtRcd_min=60,score_DirtRcd=60] ~ ~ ~ execute @a[score_gSA_min=1,score_gSA=1] ~ ~ ~ playsound minecraft:block.note.pling voice @a[c=1] ~ ~ ~ 1.5
execute @s[score_DirtRcd_min=80,score_DirtRcd=80] ~ ~ ~ tellraw @a[score_gSA_min=1,score_gSA=1] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"DirtR","color":"gray","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Dirt Race","color":"gray"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 2140645621"}},{"text":"]","color":"gray"},{"text":": "},{"text":"2","color":"yellow","bold":"true"}]}
execute @s[score_DirtRcd_min=80,score_DirtRcd=80] ~ ~ ~ execute @a[score_gSA_min=1,score_gSA=1] ~ ~ ~ playsound minecraft:block.note.pling voice @a[c=1] ~ ~ ~ 2
execute @s[score_DirtRcd_min=100,score_DirtRcd=100] ~ ~ ~ tellraw @a[score_gSA_min=1,score_gSA=1] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"DirtR","color":"gray","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Dirt Race","color":"gray"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 2140645621"}},{"text":"]","color":"gray"},{"text":": "},{"text":"1","color":"yellow","bold":"true"}]}
execute @s[score_DirtRcd_min=100,score_DirtRcd=100] ~ ~ ~ execute @a[score_gSA_min=1,score_gSA=1] ~ ~ ~ playsound minecraft:block.note.pling voice @a[c=1] ~ ~ ~ 2
execute @s[score_DirtRcd_min=120,score_DirtRcd=120] ~ ~ ~ execute @a[score_gSA_min=1,score_gSA=1] ~ ~ ~ playsound minecraft:entity.wither.death voice @a[c=1]
execute @s[score_DirtRcd_min=120,score_DirtRcd=120] ~ ~ ~ tellraw @a[score_gSA_min=1,score_gSA=1] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"DirtR","color":"gray","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Dirt Race","color":"gray"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 2140645621"}},{"text":"]","color":"gray"},{"text":": "},{"text":"GO!","color":"green","bold":"true"}]}
execute @s[score_DirtRcd_min=120,score_DirtRcd=120] ~ ~ ~ title @a[score_gSA_min=1,score_gSA=1] title {"text":"GO!","color":"green"}
execute @s[score_DirtRcd_min=120,score_DirtRcd=120] ~ ~ ~ fill 28 12 -187 28 12 -192 stonebrick 0 replace redstone_block 0