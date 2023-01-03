---@meta

---@class engine
engine = {}

---Returns whether the game console is visible.
---@return boolean
---@nodiscard
function engine.Con_IsVisible() end

---Returns whether the game UI is visible.
---@return boolean
---@nodiscard
function engine.IsGameUIVisible() end

---Returns the game is taking a screenshot.
---@return boolean
---@nodiscard
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

---Returns server ip
--
---Returns ``loopback`` if local server.
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
---@param audioPath string
function engine.PlaySound(audioPath) end

---Returns game install directory ``Team Fortress 2/tf``
---@return string
---@nodiscard
function engine.GetGameDir() end

---Sends key values to server
---@param keyvalue string
---@return boolean
function engine.SendKeyValues(keyvalue) end

---Creates a System message in the TF2 client.
---@param title string
---@param longtext? string # during test, this param does absolutely nothing
function engine.Notification(title, longtext) end

---Sets the seed for the game's uniform random number generator.
---@param seed integer
function engine.RandomSeed(seed) end

---Returns a random number between min and max (inclusive), using the game's uniform random number generator.
---@param min number
---@param max? number # optional maximum number (default = ``1`` or ``min``)
---@return number
---@nodiscard
function engine.RandomFloat(min, max) end

---Returns a random integer between min and max (inclusive), using the game's uniform random number generator.
---@param min integer
---@param max? integer # optional maximum number (default = ``0x7FFF`` or ``min``)
---@return integer
---@nodiscard
function engine.RandomInt(min, max) end

---Returns a random number between min and max using the exponent, using the game's uniform random number generator.
---@param min number
---@param max number
---@param exponent? number # optional exponent number (default = ``1``)
---@return number
---@nodiscard
function engine.RandomFloatExp(min, max, exponent) end

return engine
