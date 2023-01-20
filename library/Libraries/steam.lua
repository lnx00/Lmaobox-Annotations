---@meta

---@class steam
steam = {}

---Returns SteamID of the user as string.
---@return string SteamID3
---@nodiscard
function steam.GetSteamID() end

---Returns the player name of the player having the given SteamID.
---@param SteamID3 string
---@return string profileName
---@nodiscard
function steam.GetPlayerName(SteamID3) end

---Returns true if the player is a friend of the user.
---@param SteamID3 string
---@return boolean
---@nodiscard
function steam.IsFriend(SteamID3) end

---Returns a table of SteamID3 of all friends of the user.
---@return string[]
function steam.GetFriends() end

---Returns the 64bit SteamID of the player as a long integer.
---@param SteamID3 string
---@return number SteamID64
---@nodiscard
function steam.ToSteamID64(SteamID3) end

return steam
