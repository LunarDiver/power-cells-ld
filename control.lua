--control.lua

script.on_event(defines.events.on_player_placed_equipment,
  function(event)
    local equipment = event.equipment

    if equipment.name == "personal-power-cell" then
        equipment.energy = equipment.max_energy
    end
  end
)