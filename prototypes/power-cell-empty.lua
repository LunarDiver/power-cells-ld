data:extend {
    {
        type = "recipe",
        name = "capacitive-power-cell-empty",
        ---@diagnostic disable-next-line: assign-type-mismatch
        category = "crafting",
        subgroup = "raw-material",
        hide_from_player_crafting = false,
        order = "h[battery]",
        energy_required = 0.5,
        enabled = false,
        ingredients = {
            { "copper-plate", 2 },
            { "battery",      1 }
        },
        result = "capacitive-power-cell-empty"
    },
    {
        type = "item",
        name = "capacitive-power-cell-empty",
        icons = {
            {
                icon = "__power-cells-ld__/graphics/icons/capacitive-cell.png",
                tint = { r = 0.8, g = 0.8, b = 0.8, a = 1 }
            }
        },
        icon_size = 64, icon_mipmaps = 4,
        flags = {},
        subgroup = "raw-material",
        order = "h[battery]",
        stack_size = 10
    },
    {
        type = "recipe",
        name = "battery-power-cell-empty",
        ---@diagnostic disable-next-line: assign-type-mismatch
        category = "crafting",
        subgroup = "raw-material",
        hide_from_player_crafting = false,
        order = "h[battery]",
        energy_required = 0.5,
        enabled = false,
        ingredients = {
            { "battery",               5 },
            { "low-density-structure", 1 }
        },
        result = "battery-power-cell-empty"
    },
    {
        type = "item",
        name = "battery-power-cell-empty",
        icons = {
            {
                icon = "__power-cells-ld__/graphics/icons/battery-power-cell.png",
                tint = { r = 0.8, g = 0.8, b = 0.8, a = 1 }
            }
        },
        icon_size = 64, icon_mipmaps = 4,
        flags = {},
        subgroup = "raw-material",
        order = "h[battery]",
        stack_size = 10
    }
}
