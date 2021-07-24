execute if block ~ ~ ~ #h.block:can_replace at @a[gamemode=!creative] if score @s H.Bl_ScoreID = @p H.Bl_P.ID run clear @p item_frame{ItemName:Re_Holo_Block} 1
execute if block ~ ~ ~ #h.block:can_replace run summon item_frame ~ ~ ~ {Invulnerable:1b,Silent:1b,Fixed:1b,Invisible:1b,Tags:["H.Bl_Core_Common","H.Bl_Core_2","H.Bl_Place","H.Bl_Placed_By_Bridge"]}
tp @s ^ ^ ^1