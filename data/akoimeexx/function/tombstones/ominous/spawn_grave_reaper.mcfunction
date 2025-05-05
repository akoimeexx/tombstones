summon minecraft:wither_skeleton ~ ~ ~ { \
    Health: 40.0f, \
    attributes:[ \
        {id: "minecraft:max_health", base: 40}, \
        {id: "minecraft:armor", base: 20}, \
        {id: "minecraft:armor_toughness", base: 8} \
    ], \
    DeathLootTable: "minecraft:empty", \
    Tags: ["tombstone", "reaper", "boss", "processing"], \
    equipment: { \
        mainhand: { \
            id: "minecraft:diamond_hoe", \
            count: 1, \
            components: { \
                "minecraft:attribute_modifiers": [ \
                    {id: "attack_damage", type: "attack_damage", amount: 6d, operation: "add_value", slot: "hand" } \
                ], \
                "minecraft:enchantments": { \
                    "minecraft:sharpness": 5, \
                    "minecraft:looting": 3, \
                    "minecraft:fortune": 3, \
                    "minecraft:efficiency": 5, \
                    "minecraft:unbreaking": 3, \
                    "minecraft:mending": 1 \
                } \
            } \
        }, \
        head: {id: "minecraft:leather_helmet", count: 1, components: {"minecraft:dyed_color": 0, "minecraft:trim": {material: "minecraft:netherite", pattern: "minecraft:rib"}}}, \
        chest: {id: "minecraft:leather_chestplate", count: 1, components: {"minecraft:dyed_color": 0, "minecraft:trim": {material: "minecraft:netherite", pattern: "minecraft:rib"}}}, \
        legs: {id: "minecraft:leather_leggings", count: 1, components: {"minecraft:dyed_color": 0, "minecraft:trim": {material: "minecraft:netherite", pattern: "minecraft:rib"}}}, \
        feet: {id: "minecraft:leather_boots", count: 1, components: {"minecraft:dyed_color": 0, "minecraft:trim": {material: "minecraft:netherite", pattern: "minecraft:rib"}}} \
    }, \
    drop_chances: {feet: 0f, legs: 0f, chest: 0f, head: 0f, mainhand: 1f} \
}