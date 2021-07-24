scoreboard objectives add H.Bl_Duration dummy
scoreboard objectives add H.Bl_Charge dummy
scoreboard objectives add H.Bl_Place minecraft.used:minecraft.item_frame
scoreboard objectives add H.Bl_Sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add H.Bl_Blinking dummy

#Option1 ブロックの見た目
scoreboard objectives add H.Bl_Option1 dummy
execute unless score #H.Bl_Option H.Bl_Option1 = #H.Bl_Option H.Bl_Option1 run scoreboard players set #H.Bl_Option H.Bl_Option1 0

#スコアID
scoreboard objectives add H.Bl_P.ID dummy
scoreboard objectives add H.Bl_ScoreID dummy
scoreboard objectives add H.Bl_P.ID_Core dummy