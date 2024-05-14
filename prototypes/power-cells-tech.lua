data:extend({
    {
        type = "technology",
        name = "power-cells",
        icon = "__power-cells-ld__/graphics/technology/capacitive-cell.png",
        icon_size = 256,
        effects = {
            { type = "unlock-recipe", recipe = "capacitive-power-cell" },
            { type = "unlock-recipe", recipe = "cell-charger" },
            { type = "unlock-recipe", recipe = "basic-power-station" }
        },
        prerequisites = { "battery" },
        unit = {
            count = 50,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 }
            },
            time = 30
        }
    }
})
