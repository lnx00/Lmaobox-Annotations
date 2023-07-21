---@meta

-- The LobbyPlayer class is used to provide information about a player in a Game Server lobby.
---@class LobbyPlayer
local LobbyPlayer = {}

-- Returns the SteamID of the player as a string.
---@return string
function LobbyPlayer:GetSteamID() end

-- Returns the GC assigned team of the player.
---@return ETFTeam
function LobbyPlayer:GetTeam() end

-- Returns the GC assigned player type of this player.
---@return integer
function LobbyPlayer:GetPlayerType() end

-- Returns the steam name of the player.
---@return string
function LobbyPlayer:GetName() end

-- Returns the last time the player connected to the server as a unix timestamp.
---@return integer
function LobbyPlayer:GetLastConnectTime() end

-- Returns the normalized rating of the player - a measure of the player's skill?
---@return number
function LobbyPlayer:GetNormalizedRating() end

-- Returns the normalized uncertainty of the player - a measure of how confident the GC is in the player's rating.
---@return number
function LobbyPlayer:GetNormalizedUncertainty() end

-- Returns the rank of the player. Integer representing the player's rank.
---@return integer
function LobbyPlayer:GetRank() end

-- Returns true if the player is chat suspended.
---@return boolean
function LobbyPlayer:IsChatSuspended() end
