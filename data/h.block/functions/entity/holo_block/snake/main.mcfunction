#初回行動
execute if entity @s[tag=H.Bl_Snake_Place] run function h.block:entity/holo_block/snake/place

#向きを同期
execute at @a if score @s H.Bl_ScoreID = @p H.Bl_P.ID run function h.block:entity/holo_block/snake/rotate

#移動 移動成功時に同IDのプレイヤーのブリッジを奪う
execute if entity @s[scores={H.Bl_Duration=10..32}] run function h.block:entity/holo_block/snake/move

#同IDのプレイヤーがアイテムを持ってないなら消滅
execute at @a[gamemode=!creative,nbt=!{Inventory:[{id:"minecraft:item_frame",tag:{ItemName:Re_Holo_Block}}]}] if score @s H.Bl_ScoreID = @p H.Bl_P.ID at @s run function h.block:entity/holo_block/snake/destroy

#コイツが存在する限りチャージできない
execute at @a if score @s H.Bl_ScoreID = @p H.Bl_P.ID at @s run scoreboard players reset @p H.Bl_Charge

#置いたブリッジにIDを移す
scoreboard players operation @e[type=item_frame,tag=H.Bl_Placed_By_Bridge,limit=1,sort=nearest] H.Bl_ScoreID = @s H.Bl_ScoreID
tag @e[type=item_frame,tag=H.Bl_Core_Placed_By_Bridge,limit=1,sort=nearest] remove H.Bl_Placed_By_Bridge

#時間経過で消滅
scoreboard players add @s H.Bl_Duration 1
execute if entity @s[scores={H.Bl_Duration=32..}] run function h.block:entity/holo_block/snake/destroy