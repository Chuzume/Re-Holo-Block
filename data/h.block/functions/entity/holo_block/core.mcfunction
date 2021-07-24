
# ここには設置できない
    execute unless block ~ ~ ~ #h.block:can_replace if entity @s[tag=H.Bl_Place] run function h.block:entity/holo_block/invalid

# まず設置と効果音
    execute if block ~ ~ ~ #h.block:can_replace if entity @s[tag=H.Bl_Place] run function h.block:entity/holo_block/place

# ピストンで押すと大爆発 (ボツ処理、でも一応残しておく)
    #execute if block ~ ~ ~ moving_piston run summon tnt

# そこがガラスじゃないなら即座に死ぬ
    execute unless entity @s[tag=H.Bl_Dupe] unless block ~ ~ ~ glass unless block ~ ~ ~ piston_head run function h.block:entity/holo_block/destroy

# 見た目 壊れそうになると色が変わる
    execute if entity @s[scores={H.Bl_Duration=..40}] align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:dust 1 1 1 0.75 ~ ~ ~ 0.15 0.15 0.15 0 1
    execute if entity @s[scores={H.Bl_Duration=40..}] align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:dust 1 0.5 0.5 0.75 ~ ~ ~ 0.15 0.15 0.15 0 1
    tag @s[scores={H.Bl_Duration=40}] add H.Bl_Break_Soon

# 時間経過でブロック破壊
    scoreboard players add @s H.Bl_Duration 1
    execute if entity @s[scores={H.Bl_Duration=60..}] run function h.block:entity/holo_block/destroy