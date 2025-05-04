effect clear @s minecraft:bad_omen
effect give @s minecraft:darkness 5 0 true

function akoimeexx:tombstones/ominous/spawn_nightmare
function akoimeexx:tombstones/ominous/spawn_grave_reaper
spreadplayers ~ ~ 16 32 false @n[tag=tombstone,tag=boss,tag=processing]
tp @e[tag=tombstone,tag=boss,tag=processing,sort=nearest,limit=1] @e[tag=tombstone,tag=boss,tag=processing,sort=furthest,limit=1]
ride @n[tag=tombstone,tag=reaper,tag=boss,tag=processing] mount @n[tag=tombstone,tag=horse,tag=boss,tag=processing]
tag @e[tag=tombstone,tag=boss,tag=processing] remove processing
tag @n[tag=tombstone,tag=horse,tag=boss] remove boss