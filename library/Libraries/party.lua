---@meta

---The party library provides functions for managing the player's matchmaking party. \
---All functions return `nil` if the player is not in a party or the party client is not initialized. \
---[View Docs](https://lmaobox.net/lua/Lua_Libraries/party/)
---@class party
party = {}

---Returns the player's party leader's SteamID as string.
---@return string
---@nodiscard
function party.GetLeader() end

---Returns a table containing the player's party members' their SteamID3 as strings.
---@return SteamID3[]
---@nodiscard
function party.GetMembers() end

---Returns a table containing the player's pending party members' SteamIDs as strings. \
---These members are invited to party, but have not joined yet.
---@return SteamID3[]
---@nodiscard
function party.GetPendingMembers() end

---Returns the player's party's group ID.
---@return integer
---@nodiscard
function party.GetGroupID() end

---Returns a table where values are the player's queued match groups as MatchGroup objects.
---@return table<string, MatchGroup>
---@nodiscard
function party.GetQueuedMatchGroups() end

---Returns a table where values are all possible match groups as MatchGroup objects.
---@return { Casual: MatchGroup, Competitive6v6: MatchGroup, Bootcamp: MatchGroup, MannUp: MatchGroup, SpecialEvent: MatchGroup }
---@nodiscard
function party.GetAllMatchGroups() end

---Leaves the current party.
function party.Leave() end

---Returns true if the player can queue for the given match group. \
---If the player can not queue for the match groups, returns a table of reasons why the player can not queue.
---@param matchGroup MatchGroup
---@return boolean|string[]
---@nodiscard
function party.CanQueueForMatchGroup(matchGroup) end

---Requests to queue up for a match group.
---@param matchGroup MatchGroup
function party.QueueUp(matchGroup) end

---Cancles the request to queue up for a match group.
---@param matchGroup MatchGroup
function party.CancelQueue(matchGroup) end

---Whether the player is in the standby queue. \
---That refers to queueing up for an ongoing match in your party.
---@return boolean
---@nodiscard
function party.IsInStandbyQueue() end

---Returns whether the player can queue up for a standby match. \
---That refers to an ongoing match in your party.
---@return boolean
---@nodiscard
function party.CanQueueForStandby() end

---Requests to queue up for a standby match in your party. \
---That refers to an ongoing match in your party.
function party.QueueUpStandby() end

---Cancles the request to queue up for a standby match in your party. \
---That refers to an ongoing match in your party.
function party.CancelQueueStandby() end

---Returns a PartyMemberActivity object for the party member at the given index. \
---See GetMembers() for the index.
---@param index integer
---@return PartyMemberActivity
---@nodiscard
function party.GetMemberActivity(index) end

---Promotes the given player to the party leader. \
---Works only if you are the party leader.
---@param steamID SteamID3
function party.PromoteMemberToLeader(steamID) end

---Kicks the given player from the party. \
---Works only if you are the party leader.
---@param steamID SteamID3
---@return boolean success
function party.KickMember(steamID) end

---Returns true if the given map is selected for casual play.
---@param map MatchMapDefinition
---@return boolean
---@nodiscard
function party.IsCasualMapSelected(map) end

---Sets the given map as selected for casual play.
---@param map MatchMapDefinition
---@param selected boolean
function party.SetCasualMapSelected(map, selected) end

return party
