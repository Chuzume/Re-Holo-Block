#プレイヤーのID
execute if entity @a[tag=!H.Bl_HaveID,limit=1] run scoreboard players add #H.Bl_P.ID_Core H.Bl_P.ID_Core 1
execute as @a[tag=!H.Bl_HaveID,limit=1] run scoreboard players operation @s H.Bl_P.ID = #H.Bl_P.ID_Core H.Bl_P.ID_Core
tag @a[tag=!H.Bl_HaveID,limit=1,scores={H.Bl_P.ID=0..}] add H.Bl_HaveID

#"H.Bl_NeedID"タグ持ちにプレイヤーと同じIDを付与
#"H.Bl_ScoreID"はプレイヤー由来のエンティティ限定
execute as @e[tag=H.Bl_NeedID] at @s run scoreboard players operation @s H.Bl_ScoreID = @p H.Bl_P.ID
tag @e[tag=H.Bl_NeedID] remove H.Bl_NeedID