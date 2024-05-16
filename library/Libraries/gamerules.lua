---@meta

---The gamerules library contains functions for detecting the game rules of a TF2 match. \
---[View Docs](https://lmaobox.net/lua/Lua_Libraries/gamerules/)
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
---@nodiscard
function gamerules.GetCurrentMatchGroup() end

---Returns true if current gamemode allows players to use the grappling hook.
---@return boolean
---@nodiscard
function gamerules.IsUsingGrapplingHook() end

---Returns true if current gamemode allows players to use spells.
---@return boolean
---@nodiscard
function gamerules.IsUsingSpells() end

---Returns the current next map voting state.
---@return integer
---@nodiscard
function gamerules.GetCurrentNextMapVotingState() end

---Returns the vote state of the player with the given index.
---@param playerIndex integer
---@return integer
---@nodiscard
function gamerules.GetPlayerVoteState(playerIndex) end

---Returns last recieved state of a round as integer.
---@return E_RoundState
---@nodiscard
function gamerules.GetRoundState() end

---Returns if the player is ready.
---@return boolean
---@nodiscard
function gamerules.IsPlayerReady(playerIndex) end

return gamerules
