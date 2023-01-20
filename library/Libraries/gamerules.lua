---@meta

---@class gamerules
gamerules = {}

---Returns true if the match is a casual match.
---@return boolean
---@nodiscard
function gamerules.IsMatchTypeCasual() end

---Returns true if the match is a competitive match.
---@return boolean
---@nodiscard
function gamerules.IsMatchTypeCompetitive() end

---Returns true if the matchmaking match has ended.
---@return boolean
---@nodiscard
function gamerules.IsManagedMatchEnded() end

---Returns the time left in the match.
---@return number
---@nodiscard
function gamerules.GetTimeLeftInMatch() end

---When truce is active, players cannot attack each other.
---@return boolean
---@nodiscard
function gamerules.IsTruceActive() end

---Returns true if the current match is a MvM game.
---@return boolean
---@nodiscard
function gamerules.IsMvM() end

---Returns the current match group.
---@return MatchGroup
function gamerules.GetCurrentMatchGroup() end

---Returns true if current gamemode allows players to use the grappling hook.
---@return boolean
function gamerules.IsUsingGrapplingHook() end

---Returns true if current gamemode allows players to use spells.
---@return boolean
function gamerules.IsUsingSpells() end

---Returns the current next map voting state.
---@return integer
function gamerules.GetCurrentNextMapVotingState() end

---Returns the vote state of the player with the given index.
---@param entityindex integer
---@return integer
function gamerules.GetPlayerVoteState ( entityindex ) end

---Returns last recieved state of a round as integer.
---
---@return RoundState
function gamerules.GetRoundState() end

return gamerules