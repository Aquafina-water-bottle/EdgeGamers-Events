scoreboard players add @s QRcd 1
execute @s[score_QRcd_min=20,score_QRcd=20] ~ ~ ~ tellraw @a[score_gSA_min=1,score_gSA=1] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"QR","color":"white","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Quartz Race","color":"white"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1964796834"}},{"text":"]","color":"gray"},{"text":": "},{"text":"5","color":"yellow","bold":"true"}]}
execute @s[score_QRcd_min=20,score_QRcd=20] ~ ~ ~ execute @a[score_gSA_min=1,score_gSA=1] ~ ~ ~ playsound minecraft:block.note.pling voice @a[c=1] ~ ~ ~ 0.5
execute @s[score_QRcd_min=40,score_QRcd=40] ~ ~ ~ tellraw @a[score_gSA_min=1,score_gSA=1] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"QR","color":"white","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Quartz Race","color":"white"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1964796834"}},{"text":"]","color":"gray"},{"text":": "},{"text":"4","color":"yellow","bold":"true"}]}
execute @s[score_QRcd_min=40,score_QRcd=40] ~ ~ ~ execute @a[score_gSA_min=1,score_gSA=1] ~ ~ ~ playsound minecraft:block.note.pling voice @a[c=1] ~ ~ ~ 1
execute @s[score_QRcd_min=60,score_QRcd=60] ~ ~ ~ tellraw @a[score_gSA_min=1,score_gSA=1] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"QR","color":"white","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Quartz Race","color":"white"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1964796834"}},{"text":"]","color":"gray"},{"text":": "},{"text":"3","color":"yellow","bold":"true"}]}
execute @s[score_QRcd_min=60,score_QRcd=60] ~ ~ ~ execute @a[score_gSA_min=1,score_gSA=1] ~ ~ ~ playsound minecraft:block.note.pling voice @a[c=1] ~ ~ ~ 1.5
execute @s[score_QRcd_min=80,score_QRcd=80] ~ ~ ~ tellraw @a[score_gSA_min=1,score_gSA=1] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"QR","color":"white","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Quartz Race","color":"white"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1964796834"}},{"text":"]","color":"gray"},{"text":": "},{"text":"2","color":"yellow","bold":"true"}]}
execute @s[score_QRcd_min=80,score_QRcd=80] ~ ~ ~ execute @a[score_gSA_min=1,score_gSA=1] ~ ~ ~ playsound minecraft:block.note.pling voice @a[c=1] ~ ~ ~ 2
execute @s[score_QRcd_min=100,score_QRcd=100] ~ ~ ~ tellraw @a[score_gSA_min=1,score_gSA=1] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"QR","color":"white","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Quartz Race","color":"white"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1964796834"}},{"text":"]","color":"gray"},{"text":": "},{"text":"1","color":"yellow","bold":"true"}]}
execute @s[score_QRcd_min=100,score_QRcd=100] ~ ~ ~ execute @a[score_gSA_min=1,score_gSA=1] ~ ~ ~ playsound minecraft:block.note.pling voice @a[c=1] ~ ~ ~ 2
execute @s[score_QRcd_min=120,score_QRcd=120] ~ ~ ~ execute @a[score_gSA_min=1,score_gSA=1] ~ ~ ~ playsound minecraft:entity.wither.death voice @a[c=1]
execute @s[score_QRcd_min=120,score_QRcd=120] ~ ~ ~ tellraw @a[score_gSA_min=1,score_gSA=1] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"QR","color":"white","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Quartz Race","color":"white"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1964796834"}},{"text":"]","color":"gray"},{"text":": "},{"text":"GO!","color":"green","bold":"true"}]}
execute @s[score_QRcd_min=120,score_QRcd=120] ~ ~ ~ title @a[score_gSA_min=1,score_gSA=1] title {"text":"GO!","color":"green"}
execute @s[score_QRcd_min=120,score_QRcd=120] ~ ~ ~ fill 240 6 -160 232 6 -154 stonebrick 0 replace redstone_block 0
execute @s[score_QRcd_min=120,score_QRcd=120] ~ ~ ~ fill 232 4 -156 240 4 -158 redstone_block 0 replace stonebrick 0
execute @s[score_QRcd_min=120,score_QRcd=120] ~ ~ ~ fill 231 7 -158 231 7 -156 quartz_block 0
