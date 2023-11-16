---@meta

---The StudioHitboxSet object contains information about a studio models hitboxes.
---@class StudioHitboxSet
local StudioHitboxSet = {}

---Returns the name of the hitbox set.
---@return string
---@nodiscard
function StudioHitboxSet:GetName() end

---Returns a table of StudioBBox objects for the hitbox set.
---@return StudioBBox[]
---@nodiscard
function StudioHitboxSet:GetHitboxes() end
