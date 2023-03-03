---@meta

---@class engine
engine = {}

-- Returns whether the game console is visible.
---@return boolean
---@nodiscard
function engine.Con_IsVisible() end

-- Returns whether the game UI is visible.
---@return boolean
---@nodiscard
function engine.IsGameUIVisible() end

--Returns whether the game is taking a screenshot.
---@return boolean
---@nodiscard
function engine.IsTakingScreenshot() end

-- Traces line from src to dst, returns Trace class. The shouldHitEntity function is optional, and can be used to filter out entities that should not be hit. It should return true if the entity should be hit, and false otherwise.
---@param src Vector3
---@param dst Vector3
---@param mask? integer
---@param shouldHitEntity? fun(ent: Entity, contentsMask: integer): boolean
---@return Trace
---@nodiscard
function engine.TraceLine(src, dst, mask, shouldHitEntity) end

-- Traces hull from src to dst, returns Trace class. The shouldHitEntity function is optional, and can be used to filter out entities that should not be hit. It should return true if the entity should be hit, and false otherwise.
---@param src Vector3
---@param dst Vector3
---@param mins Vector3
---@param maxs Vector3
---@param mask? integer
---@param shouldHitEntity? fun(ent: Entity, contentsMask: integer): boolean
---@return Trace
---@nodiscard
function engine.TraceHull(src, dst, mins, maxs, mask, shouldHitEntity) end

-- Checks if given point is inside wall, returns contents.
---@param point Vector3
---@param mask? integer
---@return integer
---@nodiscard
function engine.GetPointContents(point, mask) end

-- Get the current map name.
---@return string
---@nodiscard
function engine.GetMapName() end

-- Returns server ip
-- * Returns `loopback` on local server otherwise.
---@return string
---@nodiscard
function engine.GetServerIP() end

-- Returns: pitch, yaw, roll
---@return EulerAngles
---@nodiscard
function engine.GetViewAngles() end

-- Sets player view angles
---@param angles EulerAngles
function engine.SetViewAngles(angles) end

-- Plays a sound at the given path, relative to the game's root directory `Team Fortress 2/tf/sound`
-- * The list of available sounds can be found in `tf2_sound_misc_dir.vpk`
---@param audioPath string
function engine.PlaySound(audioPath) end

-- Returns game files directory `Team Fortress 2/tf`
---@return string
---@nodiscard
function engine.GetGameDir() end

-- Sends key values to server
---@param keyvalue string
---@return boolean
function engine.SendKeyValues(keyvalue) end

-- Creates a System message in the TF2 client.
-- * message can be color coded
-- [`ColorizeText`](https://github.dev/lua9520/source-engine-2018-hl2_src/blob/3bf9df6b2785fa6d951086978a3e66f49427166a/game/client/econ/econ_notifications.cpp#L186)
-- ```
-- "\x01" -- normal text color
-- "\x02" -- label text foreground color
-- "\x03" -- yellow color (255, 178, 0, 255)
-- "\x04" -- dark green color (64, 255, 64, 255)
-- "\x05" -- achievement text color
-- ```
---@param title string
---@param longtext? string
function engine.Notification(title, longtext) end

-- Sets the seed for the game's uniform random number generator.
---@param seed integer
function engine.RandomSeed(seed) end

-- Returns a random number between min and max (inclusive), using the game's uniform random number generator.
---@param min number
---@param max? number # optional maximum number (default = ``1`` or ``min``)
---@return number
---@nodiscard
function engine.RandomFloat(min, max) end

-- Returns a random integer between min and max (inclusive), using the game's uniform random number generator.
---@param min integer
---@param max? integer # optional maximum number (default = ``0x7FFF`` or ``min``)
---@return integer
---@nodiscard
function engine.RandomInt(min, max) end

-- Returns a random number between min and max using the exponent, using the game's uniform random number generator.
---@param min number
---@param max number
---@param exponent? number # optional exponent number (default = ``1``)
---@return number
---@nodiscard
function engine.RandomFloatExp(min, max, exponent) end

return engine
