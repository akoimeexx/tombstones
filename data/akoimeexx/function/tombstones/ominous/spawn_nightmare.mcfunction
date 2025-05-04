summon minecraft:skeleton_horse ~ ~ ~ { \
    Tags: ["tombstone", "horse", "boss", "processing"], \
    ArmorItems: [{ \
        id: "minecraft:diamond_boots", \
        count: 1, \
        components: { \
            "minecraft:unbreakable": {}, \
            "minecraft:enchantments": { \
                levels: { \
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
                } \
            } \
        } \
    }, {}, {}, {}], \
    DeathLootTable: "minecraft:empty", \
    Health: 30.0f, \
    SaddleItem: { id: "minecraft:saddle", count: 1 }, \
    Silent: true, \
    Tame: false, \
    Temper: 100, \
    SkeletonTrap: false, \
    active_effects: [{ id: "minecraft:fire_resistance", amplifier: 0, duration: -1, show_particles: false, show_icon: false, ambient: true }], \
    attributes:[ \
        { id: "minecraft:generic.jump_strength", base: 1.0d }, \
        { id: "minecraft:generic.max_health", base: 30.0d }, \
        { id: "minecraft:generic.movement_speed", base: 0.3375d }, \
        { id: "minecraft:generic.safe_fall_distance", base: 32.0d }, \
        { id: "minecraft:generic.movement_efficiency", base: 1.0d }, \
        { id: "minecraft:generic.water_movement_efficiency", base: 1.0d } \
    ] \
}