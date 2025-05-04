summon minecraft:wither_skeleton ~ ~ ~ { \
    Tags: ["tombstone", "reaper", "boss", "processing"], \
    ArmorItems: [ \
        {id: "minecraft:leather_boots", count: 1, components: {"minecraft:dyed_color": 0, "minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:rib"}}}, \
        {id: "minecraft:leather_leggings", count: 1, components: {"minecraft:dyed_color": 0, "minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:rib"}}}, \
        {id: "minecraft:leather_chestplate", count: 1, components: {"minecraft:dyed_color": 0, "minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:rib"}}}, \
        {id: "minecraft:leather_helmet", count: 1, components: {"minecraft:dyed_color": 0, "minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:rib"}}} \
    ], \
    ArmorDropChances: [ -327.67f, -327.67f, -327.67f, -327.67f ], \
    DeathLootTable: "minecraft:empty", \
    HandItems: [{ \
        id: "minecraft:diamond_hoe", \
        count: 1, \
        components: { \
            "minecraft:enchantments": { \
                levels: { \
                    "minecraft:sharpness": 5, \
                    "minecraft:looting": 3, \
                    "minecraft:silk_touch": 1, \
                    "minecraft:efficiency": 5, \
                    "minecraft:unbreaking": 3, \
                    "minecraft:mending": 1 \
                } \
            }, \
            "minecraft:attribute_modifiers": [{ id: "attack_damage", type: "attack_damage", amount: 6.0d, operation: "add_value", slot: "hand" }] \
        } \
    }, {}], \
    HandDropChances: [ 1.0f, 0.0f ], \
    Health: 40.0f, \
    attributes: [ \
        { id: "minecraft:generic.armor", base: 20.0d }, \
        { id: "minecraft:generic.armor_toughness", base: 8.0d }, \
        { id: "minecraft:generic.max_health", base: 40.0d } \
    ] \
}