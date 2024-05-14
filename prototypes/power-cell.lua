data:extend{
    {
        type = "recipe",
        name = "capacitive-power-cell",
        ---@diagnostic disable-next-line: assign-type-mismatch
        category = "power-cell",
        subgroup = "raw-material",
        hide_from_player_crafting = true,
        order = "b[battery]-a[capacitive-power-cell]",
        energy_required = 2,
        enabled = false,
        ingredients = {
            { "copper-plate", 2 },
            { "battery",      1 }
        },
        result = "capacitive-power-cell"
    },
    {
        type = "item",
        name = "capacitive-power-cell",
        fuel_category = "power-cell",
        fuel_value = "1MJ",
        icons = {
            {
                icon = "__power-cells-ld__/graphics/icons/capacitive-cell.png",
                tint = {r = 1, g = 1, b = 1, a = 1}
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
        name = "battery-power-cell",
        ---@diagnostic disable-next-line: assign-type-mismatch
        category = "power-cell",
        subgroup = "raw-material",
        hide_from_player_crafting = true,
        order = "h[battery]",
        energy_required = 20,
        enabled = false,
        ingredients = {
            { "battery",               5 },
            { "low-density-structure", 1 }
        },
        result = "battery-power-cell"
    },
    {
        type = "item",
        name = "battery-power-cell",
        fuel_category = "power-cell",
        fuel_value = "10MJ",
        icons = {
            {
                icon = "__power-cells-ld__/graphics/icons/battery-power-cell.png",
                tint = {r = 1, g = 1, b = 1, a = 1}
            }
        },
        icon_size = 64, icon_mipmaps = 4,
        flags = {},
        subgroup = "raw-material",
        order = "b[personal-battery-cell]-a[battery-power-cell]",
        stack_size = 10
    }
}
