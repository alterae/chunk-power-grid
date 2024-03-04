local ns = require "ns"

data:extend {
    {
        name = ns.root .. "big-electric-pole:maximum-wire-distance",
        type = "double-setting",
        setting_type = "startup",

        default_value = 32.25,
        allowed_values = {
            30, -- Vanilla
            32, -- One chunk
            32.25, -- One chunk + wiggle room
        },
    },
    {
        name = ns.root .. "substation:supply-area-distance",
        type = "double-setting",
        setting_type = "startup",

        default_value = 9,
        allowed_values = {
            8, -- 16x16 supply area (1/4 chunk)
            9, -- Vanilla
        },
    },
}
