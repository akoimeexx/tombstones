advancement revoke @s only akoimeexx:tombstones/function/exhume_tombstone
execute if entity @s[nbt={active_effects:[{id:"minecraft:bad_omen"}]}] at @s run function akoimeexx:tombstones/ominous/spawn_boss
execute if entity @n[tag=tombstone,tag=reaper,distance=..64] run tellraw @a { \
    "type": "translatable", \
    "translate": "akoimeexx.tombstones.malevolent_presence", \
    "fallback": "A malevolent presence nearby prevents you from retrieving your items!" \
}
execute if entity @n[tag=tombstone,tag=reaper,distance=..64] run return fail

execute at @n[type=interaction,tag=tombstone,tag=hitbox] if data entity @n[type=interaction,tag=tombstone,tag=hitbox] interaction.player as @n[tag=tombstone,tag=vault] run function akoimeexx:tombstones/exhume/spawn_vault_contents
kill @n[type=interaction,tag=tombstone,tag=hitbox]
