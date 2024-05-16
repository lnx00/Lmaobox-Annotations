---@meta

---The MatchGroup object describes a single type of queue in TF2 matchmaking. \
---[View Docs](https://lmaobox.net/lua/Lua_Classes/MatchGroup/)
---@class MatchGroup
MatchGroup = {}

---Returns the ID of the match group.
---@return number id
---@nodiscard
function MatchGroup:GetID() end

---Returns the name of the match group.
---@return string name
---@nodiscard
function MatchGroup:GetName() end

---Returns whether the match group is a competitive mode. \
---Can return false if you are using a competitive bypass feature.
---@return boolean
---@nodiscard
function MatchGroup:IsCompetitiveMode() end
