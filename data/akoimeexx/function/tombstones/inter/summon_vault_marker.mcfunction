# Save items and experience to temporary marker before (possibly) moving the player via spreadplayer
execute align xyz as @e[type=minecraft:item,sort=nearest,distance=..3,nbt={Age:0s}] run data modify storage akoimeexx:tombstones volatile.inventory append from entity @s Item
kill @e[type=minecraft:item,sort=nearest,distance=..3,nbt={Age:0s}]
execute align xyz as @e[type=minecraft:experience_orb,sort=nearest,distance=..3,nbt={Age:0s}] run data modify storage akoimeexx:tombstones volatile.experience append from entity @s Value
kill @e[type=minecraft:experience_orb,sort=nearest,distance=..3,nbt={Age:0s}]
#   relocate if needed
function akoimeexx:tombstones/inter/relocate_vault

# Summon finalized location marker, transfer items and experience to it
execute at @s align xyz run summon minecraft:marker ~0.5 ~ ~0.5 {Tags:["tombstone","vault","processing"]}
data modify entity @n[tag=tombstone,tag=vault,tag=processing] data.inventory set from storage akoimeexx:tombstones volatile.inventory
data modify entity @n[tag=tombstone,tag=vault,tag=processing] data.experience set from storage akoimeexx:tombstones volatile.experience
data remove storage akoimeexx:tombstones volatile

# Place interaction entity for exhuming items and experience
execute as @n[tag=tombstone,tag=vault,tag=processing] at @s align y run summon minecraft:interaction ~ ~ ~ {Tags:["tombstone","hitbox","processing"],response:true,height:1.125f}

#   Analyze dead player rotation (y_rotation=, nbt field Rotation[0]) and tag marker accordingly
#     If north-facing:
execute if entity @s[y_rotation=135..180] run tag @n[tag=tombstone,tag=vault,tag=processing] add north
execute if entity @s[y_rotation=-180..-135] run tag @n[tag=tombstone,tag=vault,tag=processing] add north
#     If west-facing:
execute if entity @s[y_rotation=45..135] unless entity @n[tag=tombstone,tag=vault,tag=processing,tag=north] run tag @n[tag=tombstone,tag=vault,tag=processing] add west
#     If east-facing:
execute if entity @s[y_rotation=-135..-45] unless entity @n[tag=tombstone,tag=processing,tag=north] run tag @n[tag=tombstone,tag=vault,tag=processing] add east
#     If south-facing:
execute if entity @s[y_rotation=-45..45] run tag @n[tag=tombstone,tag=vault,tag=processing] add south
tag @n[tag=tombstone,tag=vault,tag=processing,tag=south] remove east
tag @n[tag=tombstone,tag=vault,tag=processing,tag=south] remove west

#   Adjust marker rotation based on tag
#     North-tagged:
data modify entity @n[tag=tombstone,tag=vault,tag=processing,tag=north] Rotation[0] set value -180.0f
#     West-tagged:
data modify entity @n[tag=tombstone,tag=vault,tag=processing,tag=west] Rotation[0] set value 90.0f
#     East-tagged:
data modify entity @n[tag=tombstone,tag=vault,tag=processing,tag=east] Rotation[0] set value -90.0f
#     South-tagged:
data modify entity @n[tag=tombstone,tag=vault,tag=processing,tag=south] Rotation[0] set value 0.0f

# Assign helpful metadata
#   Dimension of location
execute as @n[tag=tombstone,tag=vault,tag=processing] run data modify entity @s data.dimension set from entity @p Dimension
execute as @n[tag=tombstone,tag=vault,tag=processing] run data modify entity @s data.dimension_name set from entity @p Dimension
execute as @n[tag=tombstone,tag=vault,tag=processing] if dimension minecraft:overworld run data modify entity @s data.dimension_name set value "the Overworld"
execute as @n[tag=tombstone,tag=vault,tag=processing] if dimension minecraft:the_nether run data modify entity @s data.dimension_name set value "the Nether"
execute as @n[tag=tombstone,tag=vault,tag=processing] if dimension minecraft:the_end run data modify entity @s data.dimension_name set value "the End"
#   Coordinates
execute as @n[tag=tombstone,tag=vault,tag=processing] store result entity @s data.block_x int 1 run data get entity @s Pos[0]
execute as @n[tag=tombstone,tag=vault,tag=processing] store result entity @s data.block_y int 1 run data get entity @s Pos[1]
execute as @n[tag=tombstone,tag=vault,tag=processing] store result entity @s data.block_z int 1 run data get entity @s Pos[2]
