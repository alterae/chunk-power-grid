---@diagnostic disable: missing-fields

local ns = require "lib.namespace"

data:extend {
    {
        name = ns.settings.startup "big-electric-pole:maximum-wire-distance",
        type = "double-setting",
        default_value = 32.25,
        allowed_values = {
            30,    -- Vanilla
            32,    -- One chunk
            32.25, -- One chunk + wiggle room
        },
        setting_type = "startup",
    },

    {
        name = ns.settings.startup "substation:supply-area-distance",
        type = "double-setting",
        default_value = 9,
        allowed_values = {
            8, -- 16x16 supply area (1/4 chunk)
            9, -- Vanilla
        },
        setting_type = "startup",
    },
} --[[ @as LuaModSettingPrototype[] ]]
