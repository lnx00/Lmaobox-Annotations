---@meta

---The steam library provides access to basic Steam API functionality and data.
---
---[View Docs](https://lmaobox.net/lua/Lua_Libraries/steam/)
---@class steam
steam = {}

---Returns SteamID of the user as string.
---@return string SteamID3
---@nodiscard
function steam.GetSteamID() end

---Returns the player name of the player having the given SteamID.
---@param steamID3 SteamID3
---@return string profileName
---@nodiscard
function steam.GetPlayerName(steamID3) end

---Returns true if the player is a friend of the user.
---@param steamID3 SteamID3
---@return boolean
---@nodiscard
function steam.IsFriend(steamID3) end

---Returns a table of SteamID3 of all friends of the user.
---@return SteamID3[]
---@nodiscard
function steam.GetFriends() end

---Returns the 64bit SteamID of the player as a long integer.
---@param steamID3 SteamID3
---@return SteamID64 SteamID64
---@nodiscard
function steam.ToSteamID64(steamID3) end

return steam
