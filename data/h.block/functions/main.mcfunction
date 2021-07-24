# Holo_Block
    execute as @e[type=item_frame,tag=H.Bl_Core] at @s run function h.block:entity/holo_block/core
    execute as @e[type=item_frame,tag=H.Bl_Core_2] at @s run function h.block:entity/holo_block/core_2

# ホロスネイク
    execute as @e[type=armor_stand,tag=H.Bl_Snake] at @s run function h.block:entity/holo_block/snake/main

# Holo_BlocK(手持ち処理)
    execute as @a[nbt={SelectedItem:{tag:{ItemName:Re_Holo_Block}}}] at @s run function h.block:item/holo_block/main

# ホロブロック（外見）
    execute as @e[type=armor_stand,tag=H.Bl_Block] at @s run function h.block:entity/holo_block/block

# スコア
    function h.block:score_id/player_score_id

# スニーク処理
    scoreboard players reset @a[scores={H.Bl_Sneak=0}] H.Bl_Charge
    scoreboard players set @a[scores={H.Bl_Sneak=1..}] H.Bl_Sneak 0
    scoreboard players reset @a[nbt=!{SelectedItem:{tag:{ItemName:Re_Holo_Block}}}] H.Bl_Charge

# スコアリセット
    scoreboard players reset @a[scores={H.Bl_Place=1..}] H.Bl_Place