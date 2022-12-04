---@meta

---@class engine
---[Official Documentation](https://lmaobox.net/lua/Lua_Libraries/engine/)
engine = {}

engine.Con_IsVisible()
engine.IsGameUIVisible()
IsTakingScreenshot()


---Traces line from src to dst.
---@param src Vector3
---@param dst Vector3
---@param mask? integer
---@return Trace
---@nodiscard
function engine.TraceLine(src, dst, mask) end

---Traces hull from src to dst.
---@param src Vector3
---@param dst Vector3
---@param mins Vector3
---@param maxs Vector3
---@param mask? integer
---@return Trace
---@nodiscard
function engine.TraceHull(src, dst, mins, maxs, mask) end

---Checks if given point is inside wall, returns contents.
---@param point Vector3
---@param mask? integer
---@return integer
---@nodiscard
function engine.GetPointContents(point, mask) end

---Get the current map name.
---@return string
---@nodiscard
function engine.GetMapName() end

---@return string
---@nodiscard
function engine.GetServerIP() end

---@return EulerAngles
---@nodiscard
function engine.GetViewAngles() end

---@param angles EulerAngles
function engine.SetViewAngles(angles) end

PlaySound()

GetGameDir()

SendKeyValues()

Notification()

RandomSeed()

RandomFloat()

RandomInt()

RandomFloatExp()


return engine
