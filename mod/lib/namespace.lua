local root_name = "alterae:chunk-power"

local mt = {}

---Constructs a new namespace.
---@param name string The name of the namespace.
---@return Namespace
local function make_namespace(name)
    --- A namespace we can get sub-namespaces from. Also callable with a string
    --- to return a namespaced string.
    ---@class Namespace
    ---@field name string
    ---@field [string] Namespace
    local ns = {
        name = name
    }

    setmetatable(ns, mt)
    return ns
end

---Constructs a new sub-namespace.
---@param table Namespace The parent namespace.
---@param key string The name of the sub-namespace.
---@return Namespace
function mt.__index(table, key)
    return make_namespace(table.name .. ":" .. key)
end

---Gets a namespaced string from the namespace.
---@param table Namespace The namespace to use.
---@param name string The string to apply a namespace to.
---@return string
function mt.__call(table, name)
    return table.name .. ":" .. name
end

return make_namespace(root_name)
