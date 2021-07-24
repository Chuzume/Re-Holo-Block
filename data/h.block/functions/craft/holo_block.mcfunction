#まぁまずはアイテムが必要であろう
give @s item_frame{display:{Name:'{"text":"Re: Holo Block","color":"aqua","italic":false}',Lore:['{"text":" "}','{"text":"[Hold Sneak: Active Bridge Mode]","color":"white","italic":false}','{"text":" "}','{"text":"時間経過で自壊するブロックを設置する。","color":"white","italic":false}','{"text":"壊れると即座に手元に戻ってくる。","color":"white","italic":false}']},CustomModelData:1,ItemName:Re_Holo_Block,Enchantments:[{}],EntityTag:{Invulnerable:1b,Silent:1b,Fixed:1b,Invisible:1b,Tags:["H.Bl_Core_Common","H.Bl_Core","H.Bl_Place"]}} 8

#次回以降も実行するためにレシピ没収
recipe take @s h.block:re_holo_block

#なんだこのチェストは！消えてもらおう
clear @s chest 1

#進捗消去
advancement revoke @s only h.block:crafting/re_holo_block