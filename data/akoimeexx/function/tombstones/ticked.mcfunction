execute if entity @e[tag=tombstone,tag=reaper] run bossbar add akoimeexx:tombstones/bossbar/reaper "Grave Reaper"
execute at @e[tag=tombstone,tag=reaper] run function akoimeexx:tombstones/ominous/update_bossbar
execute unless entity @e[tag=tombstone,tag=reaper] run bossbar remove akoimeexx:tombstones/bossbar/reaper

execute at @e[tag=tombstone,tag=hitbox] if entity @a[nbt={active_effects:[{id:"minecraft:bad_omen"}]},distance=..16] run particle minecraft:trial_spawner_detection_ominous ^0.125 ^ ^0.25 0.25 0 0.25 0 3
execute at @e[tag=tombstone,tag=hitbox] if entity @n[tag=tombstone,tag=reaper,distance=..64] run particle minecraft:trial_spawner_detection_ominous ^0.125 ^ ^0.25 0.25 0 0.25 0 3