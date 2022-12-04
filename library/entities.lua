---@meta

---@class entities
entities = {}

---Find all entities with given class name.
---@param className string
---@return Entity[]
---@nodiscard
function entities.FindByClass(className) end

---Returns local player entity.
---@return Entity
---@nodiscard
function entities.GetLocalPlayer() end

---Returns entity by index.
---@param index integer
---@return Entity
---@nodiscard
function entities.GetByIndex(index) end

---Returns entity by user id.
---@param userID integer
---@return Entity
---@nodiscard
function entities.GetByUserID(userID) end

---Returns the player resources entity.
---return Entity
---@nodiscard
function entities.GetPlayerResources() end

return entities
