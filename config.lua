-- https://github.com/sumneko/lua-language-server/wiki/Libraries

-- config.lua
-- The name to use when suggesting this emulation. If omitted,
-- the name of the folder will be used
name = "Lmaobox"

-- A list of lua patterns to look for in Lua files. If a match is
-- found, this environment will be recommended 
words = {}

-- A list of filenames to look for in the workspace. If a
-- match is found, this environment will be recommended
files = {}

settings = {
    ["Lua.runtime.version"] = "Lua 5.4",
    ["Lua.diagnostics.globals"] = {}
}

local GLOBALS = {
    "callbacks",
    "client",
    "clientstate",
    "draw",
    "engine",
    "entities",
    "filesystem",
    "gamecoordinator",
    "gamerules",
    "globals",
    "gui",
    "input",
    "inventory",
    "itemschema",
    "materials",
    "party",
    "playerlist",
    "steam",
    "vector",
    "wrap",
}
for _, name in ipairs(GLOBALS) do
    table.insert(settings['Lua.diagnostics.globals'], name)
    table.insert(words, name .. "%.%w+")
end

local CONSTANTS = {

}
for _, name in ipairs(CONSTANTS) do
    table.insert(settings['Lua.diagnostics.globals'], name)
end