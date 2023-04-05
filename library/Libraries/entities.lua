---@meta

---@class entities
entities = {}

---Find all entities with given class name.
-- * Use `pairs` to iterate through each entity.
---@param className string
---@return table<integer, Entity>
---@nodiscard
function entities.FindByClass(className) end

---Returns local player entity.
---@return Entity|nil me
---@nodiscard
function entities.GetLocalPlayer() end

---Returns entity by index.
---@param index integer
---@return Entity|nil entity
---@nodiscard
function entities.GetByIndex(index) end

---Returns entity by user id.
---@param userID integer
---@return Entity|nil entity
---@nodiscard
function entities.GetByUserID(userID) end

---Returns the player resources entity.
---@return Entity|nil pr
---@nodiscard
function entities.GetPlayerResources() end

return entities
