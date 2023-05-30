---@meta

---@class entities
entities = {}

---Find all entities with given class name. \
---Use `pairs` to iterate through each entity.
---@param className string
---@return table<integer, Entity>
---@nodiscard
function entities.FindByClass(className) end

---Returns local player entity.
---@return Entity? me
---@nodiscard
function entities.GetLocalPlayer() end

---Returns entity by index.
---@param index integer
---@return Entity? entity
---@nodiscard
function entities.GetByIndex(index) end

---Returns entity by user id.
---@param userID integer
---@return Entity? entity
---@nodiscard
function entities.GetByUserID(userID) end

---Returns the player resources entity.
---@return Entity? pr
---@nodiscard
function entities.GetPlayerResources() end

---Creates a non-networkable entity by class name, returns entity. \
---Keep in mind that YOU are responsible for its entire lifecycle and for releasing the entity later by calling `entity:Release`.
---@param className string
---@return Entity? entity
function entities.CreateEntityByName(className) end

return entities
