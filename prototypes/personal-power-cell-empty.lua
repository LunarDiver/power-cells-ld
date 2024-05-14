local recipe = {
    type = "recipe",
    name = "personal-power-cell-empty",
    category = "crafting",
    hide_from_player_crafting = false,
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        { "battery",    2 },
        { "iron-plate", 4 }
    },
    result = "personal-power-cell-empty"
}

local item = {
    type = "item",
    name = "personal-power-cell-empty",
    icons = {
        {
            icon = "__power-cells-ld__/graphics/icons/personal-battery-cell.png",
            tint = { r = 0.8, g = 0.8, b = 0.8, a = 1 }
        }
    },
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "equipment",
    order = "h[battery]",
    default_request_amount = 5,
    stack_size = 1
}

data:extend { recipe, item }
