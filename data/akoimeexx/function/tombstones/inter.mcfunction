function akoimeexx:tombstones/inter/summon_vault_marker
execute as @n[tag=tombstone,tag=vault,tag=processing] at @s run function akoimeexx:tombstones/inter/place_vault
execute as @n[tag=tombstone,tag=vault,tag=processing] at @s run function akoimeexx:tombstones/inter/place_headstone

# Highlight vault location with glowing and MAX_LIGHT brightness
execute as @e[type=minecraft:block_display,tag=tombstone,tag=processing] run data merge entity @s {brightness:{block:15,sky:15},Glowing:true}
execute as @e[type=minecraft:item_display,tag=tombstone,tag=processing] run data merge entity @s {brightness:{block:15,sky:15},Glowing:true}

function akoimeexx:tombstones/inter/chat_vault_coordinates with entity @n[tag=tombstone,tag=vault,tag=processing] data

tag @e[tag=tombstone,tag=processing] remove processing