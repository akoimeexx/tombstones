# Only run if being executed as a tombstone target
execute unless entity @s[tag=tombstone,tag=vault,tag=processing] run return fail

# Place headstone variant block entity
execute align xyz run summon minecraft:block_display ~ ~ ~ {block_state:{Name:"minecraft:cobblestone_wall",Properties:{east:"low",west:"low"}},Tags:["tombstone","headstone","processing"]}
data modify entity @n[tag=tombstone,tag=headstone,tag=processing] Rotation set from entity @s Rotation
#   Set headstone variant type
execute store result score @s tombstones.volatile run data get entity @s UUID[0] 0.001
scoreboard players set $VARIANT tombstones.volatile 5
execute if dimension minecraft:the_nether run scoreboard players set $VARIANT tombstones.volatile 3
scoreboard players operation @s tombstones.volatile %= $VARIANT tombstones.volatile
#     If overworld/custom dimension: minecraft:prismarine_wall (if in water) || minecraft:polished_tuff_wall, minecraft:granite_wall, minecraft:andesite_wall, minecraft:diorite_wall, minecraft:polished_deepslate_wall
execute if score @s tombstones.volatile matches 0 as @n[tag=tombstone,tag=headstone,tag=processing] run data modify entity @s block_state.Name set value "minecraft:polished_tuff_wall"
execute if score @s tombstones.volatile matches 1 as @n[tag=tombstone,tag=headstone,tag=processing] run data modify entity @s block_state.Name set value "minecraft:granite_wall"
execute if score @s tombstones.volatile matches 2 as @n[tag=tombstone,tag=headstone,tag=processing] run data modify entity @s block_state.Name set value "minecraft:andesite_wall"
execute if score @s tombstones.volatile matches 3 as @n[tag=tombstone,tag=headstone,tag=processing] run data modify entity @s block_state.Name set value "minecraft:diorite_wall"
execute if score @s tombstones.volatile matches 4 as @n[tag=tombstone,tag=headstone,tag=processing] run data modify entity @s block_state.Name set value "minecraft:polished_deepslate_wall"
execute if dimension minecraft:overworld if block ~ ~ ~ water as @n[tag=tombstone,tag=headstone,tag=processing] run data modify entity @s block_state.Name set value "minecraft:prismarine_wall"
#     If nether: minecraft:nether_brick_wall, minecraft:red_nether_brick_wall, minecraft:polished_blackstone_wall
execute if dimension minecraft:the_nether if score @s tombstones.volatile matches 0 as @n[tag=tombstone,tag=headstone,tag=processing] run data modify entity @s block_state.Name set value "minecraft:nether_brick_wall"
execute if dimension minecraft:the_nether if score @s tombstones.volatile matches 1 as @n[tag=tombstone,tag=headstone,tag=processing] run data modify entity @s block_state.Name set value "minecraft:polished_blackstone_wall"
execute if dimension minecraft:the_nether if score @s tombstones.volatile matches 2 as @n[tag=tombstone,tag=headstone,tag=processing] run data modify entity @s block_state.Name set value "minecraft:red_nether_brick_wall"
#     If end: minecraft:end_stone_brick_wall
execute if dimension minecraft:the_end as @n[tag=tombstone,tag=headstone,tag=processing] run data modify entity @s block_state.Name set value "minecraft:end_stone_brick_wall"
#   Move to relative position for head of vault
#     If north-facing
execute if entity @s[tag=north] as @n[tag=tombstone,tag=headstone,tag=processing] at @s run tp @s ^-1 ^-0.0625 ^-1.125
#     If south-facing
execute if entity @s[tag=south] as @n[tag=tombstone,tag=headstone,tag=processing] at @s run tp @s ^ ^-0.0625 ^-0.125
#     If east-facing
execute if entity @s[tag=east] as @n[tag=tombstone,tag=headstone,tag=processing] at @s run tp @s ^-1 ^-0.0625 ^-0.125
#     If west-facing
execute if entity @s[tag=west] as @n[tag=tombstone,tag=headstone,tag=processing] at @s run tp @s ^ ^-0.0625 ^-1.125
#   Place headstone skull
execute as @n[tag=tombstone,tag=headstone,tag=processing] at @s run summon minecraft:item_display ^0.5 ^0.625 ^0.5625 {item:{id:"minecraft:player_head",count:1},item_display:"fixed",Tags:["tombstone","skull","processing"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]}}
data modify entity @n[tag=tombstone,tag=skull,tag=processing] item.components."minecraft:profile".id set from entity @p UUID
data modify entity @n[tag=tombstone,tag=skull,tag=processing] Rotation set from entity @s Rotation
execute as @n[tag=tombstone,tag=skull,tag=processing] at @s run schedule function akoimeexx:tombstones/inter/delayed_headstone_name 4t

#   Tilt headstone and skull back
data modify entity @n[tag=tombstone,tag=headstone,tag=processing] Rotation[1] set value -12.5f
data modify entity @n[tag=tombstone,tag=skull,tag=processing] Rotation[1] set value -12.5f