# まず設置と効果音
    execute unless block ~ ~ ~ end_portal_frame if entity @s[tag=H.Bl_Place] run function h.block:entity/holo_block/place

# そこがガラスじゃないなら即座に死ぬ
    execute unless block ~ ~ ~ glass unless block ~ ~ ~ piston_head run function h.block:entity/holo_block/destroy

# 見た目 壊れそうになると色が変わる
    execute if entity @s[scores={H.Bl_Duration=..120}] align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:dust 1 1 1 0.75 ~ ~ ~ 0.15 0.15 0.15 0 1
    execute if entity @s[scores={H.Bl_Duration=120..}] align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:dust 1 0.5 0.5 0.75 ~ ~ ~ 0.15 0.15 0.15 0 1
    tag @s[scores={H.Bl_Duration=120}] add H.Bl_Break_Soon

# プレイヤー接近で崩れだす
    scoreboard players add @s H.Bl_Duration 1
    execute if entity @s[scores={H.Bl_Duration=..79}] if entity @a[distance=..3] run scoreboard players set @s H.Bl_Duration 80
    execute if entity @s[scores={H.Bl_Duration=140..}] run function h.block:entity/holo_block/destroy