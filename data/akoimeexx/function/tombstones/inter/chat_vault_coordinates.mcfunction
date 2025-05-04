$tellraw @p { \
    "translate": "akoimeexx.tombstones.interred_position", \
    "fallback": "Items interred in %s at %s", \
    "with": [ \
        "$(dimension_name)", \
        { \
            "translate": "", \
            "fallback": "[x: %s, y: %s, z: %s ]", \
            "color":"gray", \
            "with": [ \
                {"text": "$(block_x)", "color":"red"}, \
                {"text": "$(block_y)", "color":"green"}, \
                {"text": "$(block_z)", "color":"aqua"} \
            ], \
            "clickEvent": { \
                "action": "suggest_command", \
                "value": "/execute in $(dimension) run tp @p $(block_x) $(block_y) $(block_z)" \
            }, \
            "hoverEvent": { \
                "action": "show_text", \
                "value": { \
                    "translate": "chat.coordinates.tooltip", \
                    "fallback": "Click to teleport" \
                } \
            } \
        } \
]}