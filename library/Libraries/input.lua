---@meta

---The input library provides an interface to the user's keyboard and mouse. \
---[View Docs](https://lmaobox.net/lua/Lua_Libraries/input/)
---@class input
input = {}

---Get the current mouse position.
---@return { [1]:integer, [2]: integer }
---@nodiscard
function input.GetMousePos() end

---Checks if a button is down. \
---[Key Codes](./enums.lua)
---@param key E_ButtonCode|integer
---@return boolean state, integer tick
---@nodiscard
function input.IsButtonDown(key) end

---Checks if a button is pressed. \
---[Key Codes](./enums.lua)
---@param key E_ButtonCode|integer
---@return boolean state, integer tick
---@nodiscard
function input.IsButtonPressed(key) end

---Checks if a button is released. \
---[Key Codes](./enums.lua)
---@param key E_ButtonCode|integer
---@return boolean state, integer tick
---@nodiscard
function input.IsButtonReleased(key) end

---Checks if mouse input is enabled.
---@return boolean
---@nodiscard
function input.IsMouseInputEnabled() end

---Sets whether the mouse is visible on screen and has priority on the topmost panel.
---@param enabled boolean
function input.SetMouseInputEnabled(enabled) end

---Returns the tick when buttons have last been polled.
---@return number
---@nodiscard
function input.GetPollTick() end

return input
