execute unless entity @e[type=item_frame,tag=H.Bl_Core_Common,limit=1,distance=..0.5,sort=nearest] run kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:item_frame",Count:1b}},limit=1,distance=..0.5,sort=nearest]
execute unless entity @e[type=item_frame,tag=H.Bl_Core_Common,limit=1,distance=..0.5,sort=nearest] run kill @s

#消灯
execute if entity @e[type=item_frame,tag=H.Bl_Break_Soon,limit=1,distance=..0.5,sort=nearest] run item replace entity @s armor.head with item_frame{CustomModelData: 1}
execute if entity @e[type=item_frame,tag=H.Bl_Break_Soon,limit=1,distance=..0.5,sort=nearest] run data modify entity @s Fire set value -1s

