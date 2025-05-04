# Only run if being executed as a tombstone target
execute unless entity @s[tag=tombstone,tag=vault,tag=processing] run return fail

# Place soil variant block entities and dig out vault blocks
execute align xyz run summon minecraft:block_display ~ ~ ~ {block_state:{Name:"minecraft:coarse_dirt"},Tags:["tombstone","soil","processing"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.125f,1.125f,1.125f]}}
execute align xyz run summon minecraft:block_display ~ ~ ~ {block_state:{Name:"minecraft:coarse_dirt"},Tags:["tombstone","soil","processing"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.125f,1.125f,1.125f]}}
#   Set soil variant type
#     If in the overworld and in water, change to mud:
execute if dimension minecraft:overworld if block ~ ~ ~ water as @e[tag=tombstone,tag=soil,tag=processing,sort=nearest,limit=2] run data modify entity @s block_state.Name set value "minecraft:mud"
execute if dimension minecraft:overworld if block ~ ~1 ~ water as @e[tag=tombstone,tag=soil,tag=processing,sort=nearest,limit=2] run data modify entity @s block_state.Name set value "minecraft:mud"
#     If in the nether, change soil type to soul soil:
execute if dimension minecraft:the_nether as @e[tag=tombstone,tag=soil,tag=processing] run data modify entity @s block_state.Name set value "minecraft:soul_soil"
#     If in the end, change soil type to sculk (looks end-portal-y)
execute if dimension minecraft:the_end as @e[tag=tombstone,tag=soil,tag=processing] run data modify entity @s block_state.Name set value "minecraft:sculk"
#   Move to relative positions for vault blocks and replace blocks with chest
#     If north-facing
execute if entity @s[tag=north] align xyz run tp @n[tag=tombstone,tag=soil,tag=processing] ^0.0625 ^-1 ^
execute if entity @s[tag=north] align xyz run tp @n[tag=tombstone,tag=soil,tag=processing] ^0.0625 ^-1 ^1.125
#     If south-facing
execute if entity @s[tag=south] align xyz run tp @n[tag=tombstone,tag=soil,tag=processing] ^-0.0625 ^-1 ^-0.125
execute if entity @s[tag=south] align xyz run tp @n[tag=tombstone,tag=soil,tag=processing] ^-0.0625 ^-1 ^1
#     If east-facing
execute if entity @s[tag=east] align xyz run tp @n[tag=tombstone,tag=soil,tag=processing] ^0.0625 ^-1 ^-0.125
execute if entity @s[tag=east] align xyz run tp @n[tag=tombstone,tag=soil,tag=processing] ^0.0625 ^-1 ^1
#     If west-facing
execute if entity @s[tag=west] align xyz run tp @n[tag=tombstone,tag=soil,tag=processing] ^-0.0625 ^-1 ^
execute if entity @s[tag=west] align xyz run tp @n[tag=tombstone,tag=soil,tag=processing] ^-0.0625 ^-1 ^1.125
