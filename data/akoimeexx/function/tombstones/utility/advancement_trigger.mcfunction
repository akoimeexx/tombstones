execute if entity @s[nbt={Health:0.0f}] run function akoimeexx:tombstones/inter
execute if entity @s[nbt={Health:0.0f}] run advancement revoke @s only akoimeexx:tombstones/function/player_resurrection
execute unless entity @s[nbt={Health:0.0f}] run advancement revoke @s only akoimeexx:tombstones/function/player_death