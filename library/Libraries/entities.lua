---@meta

---The entities library provides a way to find entities by their name, or by their class.
---
---[View Docs](https://lmaobox.net/lua/Lua_Libraries/entities/)
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

---Return highest entity index.
---@return integer
function entities.GetHighestEntityIndex() end

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

---Creates a non-networkable temporary entity of type [TempEntity](lua://TempEntity). \
---You are responsible for calling tempentity.
---Release when you are done with the entity.
---To trigger the entity, call PostDataUpdate.
---@param className string
---@return TempEntity
---@nodiscard
function entities.CreateTempEntityByName(className) end

return entities
