---@meta

---[Official Documentation](https://lmaobox.net/lua/Lua_Libraries/client)
client = {}

---Say text in chat.
---@param msg string
function client.ChatSay(msg) end

---Say text in team chat.
---@param msg string
function client.ChatTeamSay(msg) end

---Run command in game console.
---@param cmd string
---@param unrestrict boolean
function client.Command(cmd, unrestrict) end

---Get game convar.
---@param name string
---@return integer? value, number? value, string? value
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

-- Print text on chat, this text can be colored. Color codes are:
-- \x01 - White color
-- \x02 - Old color
-- \x03 - Player name color
-- \x04 - Location color
-- \x05 - Achievement color
-- \x06 - Black color
-- \x07 - Custom color, read from next 6 characters as HEX
-- \x08 - Custom color with alpha, read from next 8 characters as HEX
---@param msg string
function client.ChatPrintf( msg ) end

---Returns local player index.
---@return integer
---@nodiscard
function client.GetLocalPlayerIndex() end

---@class PlayerInfo
---@field Name string
---@field UserID integer
---@field SteamID integer
---@field IsBot boolean
---@field IsGOTV boolean
PlayerInfo = {}

---Returns info about the player.
---@param index integer
---@return PlayerInfo
---@nodiscard
function client.GetPlayerInfo(index) end

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

---Translate world position into screen position (x, y).
---@param position Vector3
---@return number x, number y
---@nodiscard
function client.WorldToScreen(position) end

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

---@deprecated
---@param event string
function client.AllowListener(event) end

return client
