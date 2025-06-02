---@meta

---Represents a map that is playable in a matchmaking match.
---
---[View Docs](https://lmaobox.net/lua/Lua_Classes/MatchMapDefinition/)
---@class MatchMapDefinition
local MatchMapDefinition = {}

---Returns the name of the map.
---@return string
---@nodiscard
function MatchMapDefinition:GetName() end

---Returns the ID of the map.
---@return integer
---@nodiscard
function MatchMapDefinition:GetID() end

---Returns the map name localization key.
---@return string
---@nodiscard
function MatchMapDefinition:GetNameLocKey() end
