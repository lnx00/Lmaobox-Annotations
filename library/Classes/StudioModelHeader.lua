---@meta

---The StudioModelHeader object contains information about a studio models hitbox sets and bones. \
---[View Docs](https://lmaobox.net/lua/Lua_Classes/StudioModelHeader/)
---@class StudioModelHeader
local StudioModelHeader = {}

---Returns the name of the model.
---@return string
---@nodiscard
function StudioModelHeader:GetName() end

---Returns a StudioHitboxSet object by the entities hitbox set index. \
---This can be retrieved from m_nHitBoxSet netvar.
---@return StudioHitboxSet
---@param index integer
---@nodiscard
function StudioModelHeader:GetHitboxSet(index) end

---Returns a table of all StudioHitboxSet objects for the model.
---@return StudioHitboxSet[]
---@nodiscard
function StudioModelHeader:GetAllHitboxSets() end
