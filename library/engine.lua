---@meta

---@class engine
---[Official Documentation](https://lmaobox.net/lua/Lua_Libraries/engine/)
engine = {}

function engine.Con_IsVisible() end

function engine.IsGameUIVisible() end

function engine.IsTakingScreenshot() end

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

---Sets player view angles
---@param angles EulerAngles
function engine.SetViewAngles(angles) end

---Plays a sound at the given path, relative to the game's root folder
---@param path string
function engine.PlaySound(path) end

---Returns game install directory (./Team Fortress 2/tf)
---@return string
---@nodiscard
function engine.GetGameDir() end

---Sends key values to server
---@param s string
---@return boolean sent
function engine.SendKeyValues( s ) end

---Creates a System message in the TF2 client.
---@param title string
---@param longtext string
function engine.Notification(title, longtext) end

---Sets the seed for the game's uniform random number generator.
---@param seed integer
function engine.RandomSeed( seed ) end

---@param min number
---@param max? number # optional maximum number (default = ``1``)
---@overload fun(min: number)
---@overload fun(min: number, max: number)
function engine.RandomFloat(min, max) end

---@param min integer
---@param max? integer # optional maximum number (default = ``0x7FFF``)
---@overload fun(min: number)
---@overload fun(min: number, max: number)
function engine.RandomInt(min, max) end

---@param min number
---@param max number
---@param exponent? number # optional exponent number (default = ``1``)
---@overload fun(min: number, max: number)
---@overload fun(min: number, max: number, exponent: number)
function engine.RandomFloatExp(min, max, exponent) end

return engine
