---@meta

---The gui library provides functions to get and set menu settings. \
---[View Docs](https://lmaobox.net/lua/Lua_Libraries/gui/)
---@class gui
gui = {}

---Get current value of a setting.
---@param name string
---@return any
---@nodiscard
function gui.GetValue(name) end

---Set current value of a setting.
---@param name string
---@param value string|number
---@return boolean
function gui.SetValue(name, value) end

---Returns true if lmaobox menu is open.
---@return boolean
---@nodiscard
function gui.IsMenuOpen() end

return gui
