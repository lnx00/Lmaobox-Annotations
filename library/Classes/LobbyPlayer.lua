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
