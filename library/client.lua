---@meta

---@class client
client = {}

---Returns the number of extra inventory slots the user has.
---@return integer
---@nodiscard
function client.GetExtraInventorySlots() end

---Returns whether the user is a free trial account.
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

---Translate world position into screen position (x, y).
---@param position Vector3
---@return number x, number y
---@nodiscard
function client.WorldToScreen(position) end

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

---Returns player name by index.
---@param index integer
---@return string
---@nodiscard
function client.GetPlayerNameByIndex(index) end

---Returns player name by user id.
---@param userid integer
---@return string
---@nodiscard
function client.GetPlayerNameByUserID(userid) end

---@class PlayerInfo
---@field Name string
---@field UserID integer
---@field SteamID integer STEAM_0:?:?
---@field IsBot boolean
---@field IsGOTV boolean
local PlayerInfo = {}

---Returns info about the player.
---@param index integer
---@return PlayerInfo
---@nodiscard
function client.GetPlayerInfo(index) end

---Print text on chat
---
---@param msg string
function client.ChatPrintf(msg) end

---Returns local player index.
---@return integer
---@nodiscard
function client.GetLocalPlayerIndex() end

---Get game convar.
---@param name string
---@return integer|nil value, number|nil value, string|nil value
---@nodiscard
function client.GetConVar(name) end

---Set game convar.
---@param name string
---@param value string|integer|number
---@param unrestrict boolean
function client.SetConVar(name, value, unrestrict) end

---Remove convar protection.
---
---This is needed for convars that are not allowed to be changed by the server.
---@param name string
function client.RemoveConVarProtection(name) end

---Returns a localized string.
---
---The localizable strings usually start with a ``#`` character, but there are exceptions.
---@param key string
---@return string|nil
---@nodiscard
function client.Localize( key ) end

return client
