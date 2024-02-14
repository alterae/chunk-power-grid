local root_name = "alterae:chunk-power"

local mt = {}

local function make_namespace(name)
    local ns = {
        name = name
    }

    setmetatable(ns, mt)
    return ns
end

function mt.__index(table, key)
    return make_namespace(table.name .. ":" .. key)
end

function mt.__call(table, name)
    return table.name .. ":" .. name
end

return make_namespace(root_name)
