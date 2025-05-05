summon minecraft:skeleton_horse ~ ~ ~ { \
    Health: 30.0f, \
    attributes:[ \
        { id: "minecraft:max_health", base: 30d }, \
        { id: "minecraft:movement_speed", base: 0.3375d }, \
        { id: "minecraft:movement_efficiency", base: 1d }, \
        { id: "minecraft:water_movement_efficiency", base: 1d }, \
        { id: "minecraft:jump_strength", base: 1d }, \
        { id: "minecraft:safe_fall_distance", base: 32d } \
    ], \
    active_effects: [{ id: "minecraft:fire_resistance", amplifier: 0, duration: -1, show_particles: false, show_icon: false, ambient: true }], \
    DeathLootTable: "minecraft:empty", \
    Tags: ["tombstone", "horse", "boss", "processing"], \
    equipment: { \
        saddle:{id:"minecraft:saddle",count:1}, \
        feet: { \
            id: "minecraft:diamond_boots", \
            count: 1, \
            components: { \
                "minecraft:enchantments": { \
                    "minecraft:protection": 4, \
                    "minecraft:blast_protection": 4, \
                    "minecraft:fire_protection": 4, \
                    "minecraft:projectile_protection": 4, \
                    "minecraft:feather_falling": 4, \
                    "minecraft:soul_speed": 3, \
                    "minecraft:depth_strider": 3, \
                    "minecraft:frost_walker": 2, \
                    "minecraft:thorns": 3, \
                    "minecraft:unbreaking": 3, \
                    "minecraft:mending": 1 \
                }, \
                "minecraft:unbreakable": {} \
            } \
        } \
    }, \
    Silent: true, \
    Tame: false, \
    Temper: 100, \
    SkeletonTrap: false \
}