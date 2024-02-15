local root = require "lib.namespace"
local config = root.settings

local wire_distance = settings
    .startup[config.startup "big-electric-pole:maximum-wire-distance"]
    .value --[[@as number]]

local supply_area = settings
    .startup[config.startup "substation:supply-area-distance"]
    .value --[[@as number]]

data.raw["electric-pole"]["big-electric-pole"].maximum_wire_distance = wire_distance
data.raw["electric-pole"]["substation"].supply_area_distance = supply_area
