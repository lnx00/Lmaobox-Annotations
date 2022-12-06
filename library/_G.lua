---@diagnostic disable:missing-return
---@meta

---Prints message to console. Each argument is printed on a new line.
---@param ... string
function _G.print(...) end

---Prints a colored message to console. Each argument is printed on a new line.
---@param r integer
---@param g integer
---@param b integer
---@param a integer
---@param ... string
function _G.printc(r, g, b, a, ...) end

---Loads a Lua script from given file.
---@param scriptPath string
---@return boolean success, string? error
function _G.LoadScript(scriptPath) end

---Unloads a Lua script from given file.
---@param scriptPath string
---@return boolean success, string? error
function _G.UnloadScript(scriptPath) end

---Returns current script's file name.
---@return string scriptPath
---@nodiscard
function _G.GetScriptName() end

---Prints Lua Table to console. ``key: tostring(value)``
---
---@param t table
function _G.printLuaTable(t) end
