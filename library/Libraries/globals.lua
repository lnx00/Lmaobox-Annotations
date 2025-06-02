---@meta

---This library contains global source engine variables.
---
---[View Docs](https://lmaobox.net/lua/Lua_Libraries/globals/)
---@class globals
globals = {}

---Returns server tick interval.
---@return number
---@nodiscard
function globals.TickInterval() end

---Returns client tick count.
---@return integer
---@nodiscard
function globals.TickCount() end

---Returns time since start of the game.
---@return number
---@nodiscard
function globals.RealTime() end

---Returns current time.
---@return number
---@nodiscard
function globals.CurTime() end

---Returns frame count.
---@return integer
---@nodiscard
function globals.FrameCount() end

---Returns delta time between frames. \
---FrameTime() might return tick interval in some callbacks. \
---You can use AbsoluteFrameTime() instead.
---@return number
---@nodiscard
function globals.FrameTime() end

---Returns delta time between frames.
---@return number
---@nodiscard
function globals.AbsoluteFrameTime() end

---Returns max player count.
---@return integer
---@nodiscard
function globals.MaxClients() end

return globals
