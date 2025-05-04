execute if entity @n[tag=tombstone,tag=horse,nbt={Tame:false}] run tag @n[tag=tombstone,tag=horse,nbt={Tame:false}] add claimed
data modify entity @n[tag=tombstone,tag=horse,tag=claimed] Tame set value true
data modify entity @n[tag=tombstone,tag=horse,tag=claimed] Owner set from entity @s UUID
data modify entity @n[tag=tombstone,tag=horse,tag=claimed] PersistenceRequired set value true
data modify entity @n[tag=tombstone,tag=horse,tag=claimed] Tags set value []

advancement revoke @s only akoimeexx:tombstones/function/claim_nightmare