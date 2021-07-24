#IDコピー
scoreboard players operation @s H.Bl_ScoreID = @e[type=item_frame,tag=H.Bl_Core,limit=1,sort=nearest] H.Bl_ScoreID
tag @s remove H.Bl_Snake_Place

#パーティクルと音
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle explosion ~ ~ ~ 0 0 0 0 1
playsound minecraft:entity.zombie_villager.converted block @a ~ ~0.5 ~ 1 2

#コイツが出現すると最初の橋が崩れる
#execute at @e[type=item_frame,tag=H.Bl_Core_2] if score @s H.Bl_ScoreID = @e[type=item_frame,tag=H.Bl_Core_2,limit=1,sort=nearest] H.Bl_ScoreID as @e[type=item_frame,tag=H.Bl_Core_2,limit=1,sort=nearest] run function h.block:entity/holo_block/destroy