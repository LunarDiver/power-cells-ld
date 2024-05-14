data:extend({
    {
        type = "technology",
        name = "advanced-power-cells",
        icon = "__power-cells-ld__/graphics/technology/battery-power-cell.png",
        icon_size = 256,
        effects = {
            {type = "unlock-recipe", recipe = "battery-power-cell"},
            {type = "unlock-recipe", recipe = "advanced-power-station"},
            {type = "unlock-recipe", recipe = "personal-power-cell"}
        },
        prerequisites = {
            "power-cells", "low-density-structure", "electric-energy-accumulators"
        },
        unit = {
            count = 150,
            ingredients = {
                {"automation-science-pack", 1}, {"logistic-science-pack", 1},
                {"chemical-science-pack", 1}
            },
            time = 30
        }
    }
})
