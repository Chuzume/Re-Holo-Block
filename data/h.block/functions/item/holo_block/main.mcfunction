#チャージ
scoreboard players add @s[scores={H.Bl_Sneak=1..}] H.Bl_Charge 1

#チャージ消去
scoreboard players reset @s[scores={H.Bl_Place=1..}] H.Bl_Charge

#チャージできたよ！
execute if entity @s[scores={H.Bl_Charge=15}] run function h.block:item/holo_block/charged
