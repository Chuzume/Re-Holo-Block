
# 設定のスコアが1なら見た目がいい感じになる
    execute if score #H.Bl_Option H.Bl_Option1 matches 1 run execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon armor_stand ~ ~ ~ {Silent:1b,Fire:10000s,Invisible:1b,Small:1b,Marker:1b,Tags:["H.Bl_Block"],ArmorItems:[{},{},{},{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:1,Enchantments:[{}]}}]}

# ブロック設置
    execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.05 3
    playsound minecraft:block.glass.place block @a ~ ~ ~ 1 1.2
    playsound minecraft:entity.experience_orb.pickup block @a ~ ~ ~ 1 1.5
    setblock ~ ~ ~ air destroy
    setblock ~ ~ ~ glass