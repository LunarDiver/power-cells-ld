local recipe = {
    type = "recipe",
    name = "personal-power-cell",
    category = "power-cell",
    hide_from_player_crafting = true,
    enabled = false,
    energy_required = 0.2,
    ingredients = {
        { "battery",    2 },
        { "iron-plate", 4 }
    },
    result = "personal-power-cell"
}

local item = {
    type = "item",
    name = "personal-power-cell",
    icon = "__power-cells__/graphics/icons/personal-battery-cell.png",
    icon_size = 64,
    icon_mipmaps = 4,
    placed_as_equipment_result = "personal-power-cell",
    subgroup = "equipment",
    order = "b[capacitive-power-cell]-a[personal-battery-cell]",
    default_request_amount = 5,
    stack_size = 1
}

local equip = {
  type = "battery-equipment",
  name = "personal-power-cell",
  take_result = 'battery',
  sprite = {
        filename = "__power-cells__/graphics/equipment/battery-equipment.png",
        width = 32,
        height = 64,
        priority = "medium",
        hr_version = {
            filename = "__power-cells__/graphics/equipment/hr-battery-equipment.png",
            width = 64,
            height = 128,
            priority = "medium",
            scale = 0.5
        }
    },
    shape = {width = 1, height = 2, type = "full"},
    energy_source = {
        type = "electric",
        input_flow_limit = "0J",
        buffer_capacity = "20MJ",
        usage_priority = "tertiary"
    },
    categories = {"armor"}
}

data:extend{recipe, item, equip}
