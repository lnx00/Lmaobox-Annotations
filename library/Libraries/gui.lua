---@meta

---@class gui
gui = {}

---Get current value of a setting
---@param name string
---@return any
---@nodiscard
function gui.GetValue(name) end

---Set current value of a setting
---@param name string
---@param value string|number
---@return boolean
function gui.SetValue(name, value) end

return gui
