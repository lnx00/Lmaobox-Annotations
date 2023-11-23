---@meta

---The client library is used to get information about the client.
---@class client
client = {}

---Returns the number of extra inventory slots the user has.
---@return integer
---@nodiscard
function client.GetExtraInventorySlots() end

---Returns whether the user has premium upgrades.
---@return boolean
---@nodiscard
function client.IsFreeTrialAccount() end

--- Returns whether the user has competitive access.
---@return boolean
---@nodiscard
function client.HasCompetitiveAccess() end

--- Returns whether the user is in the coaches list.
---@return boolean
---@nodiscard
function client.IsInCoachesList() end

--Translate world position into screen position (x, y).
---@param position Vector3
---@param view ViewSetup?
---@return { [1]:integer, [2]: integer }?
---@nodiscard
function client.WorldToScreen(position, view) end

---Run command in game console.
---@param cmd string
---@param unrestrict boolean
function client.Command(cmd, unrestrict) end

---Say text in chat.
---@param msg string
function client.ChatSay(msg) end

---Say text in team chat.
---@param msg string
function client.ChatTeamSay(msg) end

---@deprecated
---@param event string
function client.AllowListener(event) end

---Returns player name by player index.
---@param playerindex integer
---@return string
---@nodiscard
function client.GetPlayerNameByIndex(playerindex) end

---Returns player name by user id.
---@param userid integer
---@return string
---@nodiscard
function client.GetPlayerNameByUserID(userid) end

---@class PlayerInfo
---@field Name string
---@field UserID integer
---@field SteamID SteamID3 # SteamID3: `[U:1:?]`
---@field IsBot boolean
---@field IsGOTV boolean
local PlayerInfo = {}

-- Returns info about the player.
-- * Note : `UserID`, `SteamID` is only obtainable when client is fully connected.
---@param index integer
---@return PlayerInfo
---@nodiscard
function client.GetPlayerInfo(index) end

-- Print text on chat.
-- * message can be color coded
--  [`CBaseHudChatLine::InsertAndColorizeText`](https://github.dev/lua9520/source-engine-2018-hl2_src/blob/3bf9df6b2785fa6d951086978a3e66f49427166a/game/client/hud_basechat.cpp#L1380)
-- ```
-- "\x01" -- normal text color
-- "\x03" -- your team color
-- "\x04" -- location text color
-- "\x05" -- achievement text color
-- "\x07" -- 6 digit hex color RRGGBB
-- "\x08" -- 8 digit hex color RRGGBBAA
-- ```
---@param msg string
function client.ChatPrintf(msg) end

-- Returns local player index.
---@return integer
---@nodiscard
function client.GetLocalPlayerIndex() end

-- Get game convar.
---@param name string
---@return integer?, number, string
---@nodiscard
function client.GetConVar(name) end

-- Set game convar.
---@param name string
---@param value string|number
function client.SetConVar(name, value) end

-- Remove convar protection.                                                    
-- * This is needed for convars that are not allowed to be changed by the server.
---@param name string
function client.RemoveConVarProtection(name) end

-- Returns a localized ASCII string.                                                         
-- * The localizable strings usually start with a `#` character, but there are exceptions.
-- * If you use this feature it's critical that you sanitize the input string.
-- * Consider using utf8 library if you plan to support non-English Team Fortress 2 players.
---@param key string
---@return string?
---@nodiscard
function client.Localize(key) end

---(Undocumented)
---Returns the current view setup for the local player
---@return ViewSetup
---@nodiscard
function client.GetPlayerView() end

return client
