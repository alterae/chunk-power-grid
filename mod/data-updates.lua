local big_pole_reach = settings.startup["alterae:chunk-power:big-electric-pole:maximum-wire-distance"].value
local substation_area = settings.startup["alterae:chunk-power:substation:supply-area-distance"].value

data.raw["electric-pole"]["big-electric-pole"].maximum_wire_distance = big_pole_reach
data.raw["electric-pole"]["substation"].supply_area_distance = substation_area
