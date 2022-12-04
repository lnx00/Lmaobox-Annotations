---@meta

---@class gui
gui = {}

---@param name string
---@return any
---@nodiscard
function gui.GetValue(name) end

---@param name string
---@param value string|number
---@return boolean
function gui.SetValue(name, value) end

return gui
