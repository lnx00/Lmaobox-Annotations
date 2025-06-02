---@meta

---The engine library provides access to the game's core functionality.
---
---[View Docs](https://lmaobox.net/lua/Lua_Libraries/engine/)
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

---Return whether the game chat is open.
---@return boolean
---@nodiscard
function engine.IsChatOpen() end

---Returns whether the game is taking a screenshot.
---@return boolean
---@nodiscard
function engine.IsTakingScreenshot() end

---Traces line from src to dst, returns Trace class. \
---The shouldHitEntity function is optional, and can be used to filter out entities that should not be hit. \
---It should return true if the entity should be hit, and false otherwise.
---@param src Vector3
---@param dst Vector3
---@param mask? integer
---@param shouldHitEntity? fun(ent: Entity, contentsMask: integer): boolean
---@return Trace
---@nodiscard
function engine.TraceLine(src, dst, mask, shouldHitEntity) end

---Traces hull from src to dst, returns Trace class. \
---The shouldHitEntity function is optional, and can be used to filter out entities that should not be hit. \
---It should return true if the entity should be hit, and false otherwise.
---@param src Vector3
---@param dst Vector3
---@param mins Vector3
---@param maxs Vector3
---@param mask? integer
---@param shouldHitEntity? fun(ent: Entity, contentsMask: integer): boolean
---@return Trace
---@nodiscard
function engine.TraceHull(src, dst, mins, maxs, mask, shouldHitEntity) end

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

---Returns server ip.
---Returns `loopback` on local servers.
---@return string
---@nodiscard
function engine.GetServerIP() end

---Returns player view angles.
---@return EulerAngles
---@nodiscard
function engine.GetViewAngles() end

---Sets player view angles immediately on the client (visible camera change). \
---For silent aim use `UserCmd:SetViewAngles`, which only modifies the outgoing command without moving the camera.
---@param angles EulerAngles
function engine.SetViewAngles(angles) end

---Plays a sound at the given path, relative to the game's root directory `Team Fortress 2/tf/sound`. \
---The list of available sounds can be found in `tf2_sound_misc_dir.vpk`.
---@param audioPath string
function engine.PlaySound(audioPath) end

---Returns game files directory `Team Fortress 2/tf`.
---@return string
---@nodiscard
function engine.GetGameDir() end

---Sends key values to server.
---@param keyvalue string
---@return boolean
function engine.SendKeyValues(keyvalue) end

---Creates a notification in the TF2 client. \
---If longText is not specified, the notification will be a simple popup with title text. \
---If longText is specified, the notification will be a popup with title text, which will open a large window with longText as text.
---@param title string
---@param longtext? string
function engine.Notification(title, longtext) end

---Sets the seed for the game's uniform random number generator.
---@param seed integer
function engine.RandomSeed(seed) end

---Returns a random number between min and max (inclusive), using the game's uniform random number generator.
---@param min number
---@param max? number # optional (default = `1` or `min`)
---@return number
---@nodiscard
function engine.RandomFloat(min, max) end

---Returns a random integer between min and max (inclusive), using the game's uniform random number generator.
---@param min integer
---@param max? integer # optional (default = `0x7FFF` or `min`)
---@return integer
---@nodiscard
function engine.RandomInt(min, max) end

---Returns a random number between min and max using the exponent, using the game's uniform random number generator.
---@param min number
---@param max number
---@param exponent? number # optional (default = `1`)
---@return number
---@nodiscard
function engine.RandomFloatExp(min, max, exponent) end

return engine
