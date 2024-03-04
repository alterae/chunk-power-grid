local ns = require "ns"

local maximum_wire_distance =
    settings.startup[ns.root .. "big-electric-pole:maximum-wire-distance"].value

if data.raw["electric-pole"]["big-electric-pole"] then
    data.raw["electric-pole"]["big-electric-pole"].maximum_wire_distance =
        maximum_wire_distance
end

local supply_area_distace =
    settings.startup[ns.root .. "substation:supply-area-distance"].value

if data.raw["electric-pole"]["substation"] then
    data.raw["electric-pole"]["substation"].supply_area_distance =
        supply_area_distace
end
