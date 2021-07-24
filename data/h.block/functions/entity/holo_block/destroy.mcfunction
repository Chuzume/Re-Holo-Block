# 同スコアの人にアイテム渡す
    execute at @a[gamemode=!creative] if score @s H.Bl_ScoreID = @p H.Bl_P.ID run give @p item_frame{display:{Name:'{"text":"Re: Holo Block","color":"aqua","italic":false}',Lore:['{"text":" "}','{"text":"[Hold Sneak: Active Bridge Mode]","color":"white","italic":false}','{"text":" "}','{"text":"時間経過で自壊するブロックを設置する。","color":"white","italic":false}','{"text":"壊れると即座に手元に戻ってくる。","color":"white","italic":false}']},CustomModelData:1,ItemName:Re_Holo_Block,Enchantments:[{}],EntityTag:{Invulnerable:1b,Silent:1b,Fixed:1b,Invisible:1b,Tags:["H.Bl_Core_Common","H.Bl_Core","H.Bl_Place"]}} 1

# シルクタッチ対策
    kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:glass",Count:1b}},limit=1,distance=..0.5,sort=nearest]

# えんしゅつ
    execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.1 5
    playsound minecraft:entity.chicken.egg block @a ~ ~ ~ 1 1.5
    execute if block ~ ~ ~ glass run setblock ~ ~ ~ air destroy
    kill @s