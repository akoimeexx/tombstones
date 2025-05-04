summon minecraft:experience_orb ~ ~ ~ {Tags:["tombstone","xp","processing"],Motion:[0.0d,0.4d,0.0d]}
data modify entity @n[tag=tombstone,tag=xp,tag=processing] Value set from entity @s data.experience[-1]
data remove entity @s data.experience[-1]
data modify entity @n[tag=tombstone,tag=xp,tag=processing] Tags set value []
execute if data entity @s data.experience[-1] run function akoimeexx:tombstones/exhume/spawn_experience