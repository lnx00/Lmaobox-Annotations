---@meta

---The StudioHitboxSet object contains information about a studio models hitboxes.
---
---[View Docs](https://lmaobox.net/lua/Lua_Classes/StudioHitboxSet/)
---@class StudioHitboxSet
local StudioHitboxSet = {}

---Returns the name of the hitbox set.
---@return string
---@nodiscard
function StudioHitboxSet:GetName() end

---Returns a table of [StudioBBox](lua://StudioBBox) objects for the hitbox set.
---@return StudioBBox[]
---@nodiscard
function StudioHitboxSet:GetHitboxes() end
