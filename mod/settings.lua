local ns = require "lib.namespace"

data:extend {
    -- Whether to allow a little wiggle room for big power poles, beyond 32
    -- tiles (to allow for slight adjustments).
    {
        name = ns.settings.startup "big-electric-pole:maximum-wire-distance",
        type = "double-setting",
        default_value = 32.25,              -- Allows a little leeway for non-straight lines
        allowed_values = { 30, 32, 32.25 }, -- 30 = vanilla, 32 = 1 chunk
        setting_type = "startup",
    },

    {
        name = ns.settings.startup "substation:supply-area-distance",
        type = "double-setting",
        default_value = 9,         -- Vanilla
        allowed_values = { 8, 9 }, -- 8 = quarter-chunk area
        setting_type = "startup",
    },
}
