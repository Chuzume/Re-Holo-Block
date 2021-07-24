#初期設定では1
scoreboard players add #H.Bl_Option H.Bl_Option1 1
execute if score #H.Bl_Option H.Bl_Option1 matches 2 run scoreboard players set #H.Bl_Option H.Bl_Option1 0

execute if score #H.Bl_Option H.Bl_Option1 matches 0 run tellraw @s ["\n----------\n\n",{"text":"ホロブロックの見た目: 処理優先\nHolo Block Graphic: Fast"},"\n\n----------\n"]
execute if score #H.Bl_Option H.Bl_Option1 matches 1 run tellraw @s ["\n----------\n\n",{"text":"ホロブロックの見た目: 描画優先\nHolo Block Graphic: Fancy"},"\n\n----------\n"]