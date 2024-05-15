local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")

local entityTint = {r = 1, g = 1, b = 1, a = 1}
function accumulator_picture(tint, repeat_count)
    return {
        layers = {
            {
                filename = "__power-cells-ld__/graphics/entity/advanced-power-station/advanced-power-station.png",
                priority = "high",
                width = 66,
                height = 94,
                repeat_count = repeat_count,
                shift = util.by_pixel(0, -10),
                tint = tint,
                animation_speed = 1,
                hr_version = {
                    filename = "__power-cells-ld__/graphics/entity/advanced-power-station/hr-advanced-power-station.png",
                    priority = "high",
                    width = 130,
                    height = 189,
                    repeat_count = repeat_count,
                    shift = util.by_pixel(0, -11),
                    tint = tint,
                    animation_speed = 1,
                    scale = 0.5
                }
            }, {
                filename = "__base__/graphics/entity/accumulator/accumulator-shadow.png",
                priority = "high",
                width = 120,
                height = 54,
                repeat_count = repeat_count,
                shift = util.by_pixel(28, 6),
                draw_as_shadow = true,
                hr_version = {
                    filename = "__base__/graphics/entity/accumulator/hr-accumulator-shadow.png",
                    priority = "high",
                    width = 234,
                    height = 106,
                    repeat_count = repeat_count,
                    shift = util.by_pixel(29, 6),
                    draw_as_shadow = true,
                    scale = 0.5
                }
            }
        }
    }
end

-- Advanced
local basicName = "advanced-power-station"

local basicRecipe = {
    enabled = false,
    type = "recipe",
    name = basicName,
    ingredients = {
        {"iron-gear-wheel", 26}, {"steel-plate", 8},
        {"copper-cable", 36}, {"concrete", 10}
    },
    result = basicName
}

local basicItem = {
    type = "item",
    name = basicName,
    icons = {
        { icon = "__power-cells-ld__/graphics/icons/advanced-power-station.png", tint = entityTint }
    },
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "energy",
    order = "b[steam-power]-c[advanced-power-station]",
    place_result = basicName,
    stack_size = 10
}

local eletricTint = {r = 1, g = 1, b = 1, a = 1}
local basicEntity = {
    name = basicName,
    type = "burner-generator",
    icons = {
        { icon = "__power-cells-ld__/graphics/icons/advanced-power-station.png", tint = entityTint }
    },
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    max_health = 250,
    corpse = "accumulator-remnants",
    fast_replaceable_group = "power-station",
    dying_explosion = "accumulator-explosion",
    match_animation_speed_to_activity = false,
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    max_power_output = "4200kW",
    minable = {mining_time = 0.3, result = basicName},
    animation = {
        layers = {
            accumulator_picture(entityTint, 24), {
            filename = "__power-cells-ld__/graphics/entity/basic-power-station/power-station-working.png",
                priority = "high",
                width = 90,
                height = 100,
                line_length = 6,
                frame_count = 24,
                tint = eletricTint,
                draw_as_glow = true,
                shift = util.by_pixel(0, -22),
                hr_version = {
                filename = "__power-cells-ld__/graphics/entity/basic-power-station/hr-power-station-working.png",
                    priority = "high",
                    width = 178,
                    height = 206,
                    line_length = 6,
                    tint = eletricTint,
                    frame_count = 24,
                    draw_as_glow = true,
                    shift = util.by_pixel(0, -22),
                    scale = 0.5
                }
            }
        }
    },
    idle_animation = {layers = {accumulator_picture(entityTint, 24)}},
    burner = {
        fuel_category = "power-cell",
        effectivity = 1,
        fuel_inventory_size = 1,
        emissions_per_minute = 0,
        burnt_inventory_size = 1
    },
    energy_source = {type = "electric", usage_priority = "secondary-output"},
    working_sound = {
        sound = {filename = "__base__/sound/accumulator-idle.ogg", volume = 0.5},
        audible_distance_modifier = 0.6,
        fade_in_ticks = 4,
        fade_out_ticks = 20
    }
}

data:extend{basicItem, basicRecipe, basicEntity}
