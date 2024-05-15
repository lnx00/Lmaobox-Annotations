---@meta

---The gamecoordinator library provides information about the state of the matchmaking system and current match made game.
---@class gamecoordinator
gamecoordinator = {}

---Returns true if the player is connected to the game coordinator.
---@return boolean
---@nodiscard
function gamecoordinator.ConnectedToGC() end

---Returns true if the player is in the end of match phase.
---@return boolean
---@nodiscard
function gamecoordinator.InEndOfMatch() end

---Returns true if the player is assigned to a live match.
---@return boolean
---@nodiscard
function gamecoordinator.HasLiveMatch() end

---Returns Wether if the player is connected to the assigned match server.
---@return boolean
---@nodiscard
function gamecoordinator.IsConnectedToMatchServer() end

---Abandons the current match and forcefully disconnects the player from the match server.
function gamecoordinator.AbandonMatch() end

---Returns the status of the match relative to the player connection.
---@return E_MatchAbandonStatus
---@nodiscard
function gamecoordinator.GetMatchAbandonStatus() end

---Returns the ping data for all available data centers in a table.
---@return table<string, number>
---@nodiscard
function gamecoordinator.GetDataCenterPingData() end

---Returns the number of match invites the player has.
---@return integer # 0: no invites
---@nodiscard
function gamecoordinator.GetNumMatchInvites() end

---Accepts all match invites the player has. Usually it's just one, and they are automatically accepted after some time anyway.
function gamecoordinator.AcceptMatchInvites() end

---Joins the match the player is currently assigned to from the previously acccepted match invite. \
---This is usually called after accepting a match invite if the player wants to join the match. \
---If not, call AbandonMatch() to leave the match.
function gamecoordinator.JoinMatchmakingMatch() end

---Enumerates the maps in the queue and calls the callback function for each map. \
---The callback function receives the MatchMapDefinition and the health of the map represented as a number from 0 to 1. \
---You must receive the GameCoordinator's map health update at least once to use this function (i.e. by queueing up). \
---@param callback fun(matchMapDefinition: MatchMapDefinition, health: number)
function gamecoordinator.EnumerateQueueMapsHealth(callback) end

---Returns the GameServerLobby object for the current match or `nil` if the player is not in a match.
---@return GameServerLobby?
---@nodiscard
function gamecoordinator.GetGameServerLobby() end

---Sends a message to the game coordinator.
---You can use this to send custom messages to the game coordinator.
---The typeID is the message type, and data is the message data.
---The data must be a string of protobuf encoded bytes.
---@param typeID integer
---@param data string
function gamecoordinator.GCSendMessage(typeID, data) end

return gamecoordinator
