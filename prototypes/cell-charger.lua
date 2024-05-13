require("util")
local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")

function cell_charger_picture(tint, repeat_count)
    return {
        layers = {
            {
                filename = "__power-cells__/graphics/entity/cell-charger/cell-charger.png",
                priority = "high",
                width = 129,
                height = 100,
                repeat_count = repeat_count,
                shift = {0.421875, 0},
                tint = tint,
                -- animation_speed = 0.5,
                hr_version = {
                    filename = "__power-cells__/graphics/entity/cell-charger/hr-cell-charger.png",
                    priority = "high",
                    width = 239,
                    height = 219,
                    repeat_count = repeat_count,
                    shift = util.by_pixel(0.75, 5.75),
                    tint = tint,
                    -- animation_speed = 0.5,
                    scale = 0.5
                }
            }, {
                filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
                priority = "high",
                width = 129,
                height = 100,
                repeat_count = repeat_count,
                shift = {0.421875, 0},
                draw_as_shadow = true,
                hr_version = {
                    filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-shadow.png",
                    priority = "high",
                    width = 227,
                    height = 171,
                    repeat_count = repeat_count,
                    shift = util.by_pixel(11.25, 7.75),
                    draw_as_shadow = true,
                    scale = 0.5
                }
            }
        }
    }
end

-- Basic
local basicName = "cell-charger"
local entityTint = {r = 1, g = 1, b = 1, a = 1}

local basicRecipe = {
    type = "recipe",
    name = basicName,
    enabled = false,
    ingredients = {
        {"copper-plate", 8}, {"iron-plate", 12}, {"iron-stick", 10},
        {"copper-cable", 10}, {"iron-gear-wheel", 12}, {"electronic-circuit", 4}
    },
    result = basicName
}

local basicItem = {
    type = "item",
    name = basicName,
    icons = {
        {
            icon = "__power-cells__/graphics/icons/cell-charger.png",
            tint = entityTint
        }
    },
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "energy",
    order = "e[cell-charger]-a[cell-charger]",
    place_result = basicName,
    tint = {r = 1, g = 1, b = 1, a = 1},
    stack_size = 10
}

local basicEntity = {
    type = "assembling-machine",
    name = basicName,
    icons = {
        {
            icon = "__power-cells__/graphics/icons/cell-charger.png",
            tint = entityTint
        }
    },
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.3, result = basicName},
    max_health = 400,
    corpse = "electric-furnace-remnants",
    dying_explosion = "electric-furnace-explosion",
    resistances = {{type = "fire", percent = 70}},
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = hit_effects.entity(),
    match_animation_speed_to_activity = false,
    alert_icon_shift = util.by_pixel(-3, -12),
    crafting_categories = {"power-cell"},
    crafting_speed = 1,
    energy_source = {type = "electric", usage_priority = "tertiary"},
    energy_usage = "500KW",
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    vehicle_impact_sound = sounds.generic_impact,
    working_sound = {
        sound = {
            {filename = "__base__/sound/accumulator-working.ogg", volume = 0.5}
        },
        audible_distance_modifier = 0.5,
        fade_in_ticks = 4,
        fade_out_ticks = 20
    },
    animation = {
        layers = {
            cell_charger_picture(entityTint, 24), {
                filename = "__power-cells__/graphics/entity/cell-charger/cell-charging.png",
                priority = "high",
                width = 88,
                height = 104,
                line_length = 6,
                frame_count = 24,
                draw_as_glow = true,
                shift = util.by_pixel(-2, -19),
                hr_version = {
                    filename = "__power-cells__/graphics/entity/cell-charger/hr-cell-charging.png",
                    priority = "high",
                    width = 170,
                    height = 210,
                    line_length = 6,
                    frame_count = 24,
                    draw_as_glow = true,
                    shift = util.by_pixel(-1, -20),
                    scale = 0.5
                }
            }
        }
    },
    idle_animation = {layers = {cell_charger_picture(entityTint, 24)}}
}

data:extend{basicItem, basicRecipe, basicEntity}