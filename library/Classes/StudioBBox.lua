---@meta

---The StudioBBox object contains information about a studio models bounding box. \
---[View Docs](https://lmaobox.net/lua/Lua_Classes/StudioBBox/)
---@class StudioBBox
local StudioBBox = {}

---Returns the name of the bounding box.
---@return string
---@nodiscard
function StudioBBox:GetName() end

---Returns the bone index of the bounding box. \
---This is useful to index the bone matrix to properly transform the bounding box.
---@return integer
---@nodiscard
function StudioBBox:GetBone() end

---Returns the group index of the bounding box.
---@return integer
---@nodiscard
function StudioBBox:GetGroup() end

---Returns the minimum point of the bounding box as a Vector3.
---@return Vector3
---@nodiscard
function StudioBBox:GetBBMin() end

---Returns the maximum point of the bounding box as a Vector3.
---@return Vector3
---@nodiscard
function StudioBBox:GetBBmax() end
