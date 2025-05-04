bossbar set akoimeexx:tombstones/bossbar/reaper color red
execute store result bossbar akoimeexx:tombstones/bossbar/reaper max run attribute @n[tag=tombstone,tag=reaper] generic.max_health get
execute store result bossbar akoimeexx:tombstones/bossbar/reaper value run data get entity @n[tag=tombstone,tag=reaper] Health
execute at @n[tag=tombstone,tag=reaper] run bossbar set akoimeexx:tombstones/bossbar/reaper players @a[distance=..64]
