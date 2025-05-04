# Only run if being executed as a player
execute unless entity @s[type=minecraft:player] run return fail

execute if dimension minecraft:overworld at @s unless entity @s[y=-59,dy=383] run spreadplayers ~ ~ 0 16 false @s
execute if dimension minecraft:the_nether at @s unless entity @s[y=5,dy=255] run spreadplayers ~ ~ 0 16 under 127 false @s
execute if dimension minecraft:the_end at @s unless entity @s[y=5,dy=255] run spreadplayers ~ ~ 0 256 false @s

execute if dimension minecraft:overworld at @s unless entity @s[y=-59,dy=383] run function akoimeexx:tombstones/inter/relocate_vault
execute if dimension minecraft:the_nether at @s unless entity @s[y=5,dy=255] run function akoimeexx:tombstones/inter/relocate_vault
execute if dimension minecraft:the_end at @s unless entity @s[y=5,dy=255] run function akoimeexx:tombstones/inter/relocate_vault