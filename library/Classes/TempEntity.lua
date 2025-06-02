---@meta

---Represents a temporary entity.
---Temporary entities are not like regular Entities, they only exist for a split moment to transfer some information, create an effect, or perform some action.
---Their effects can often outlive the temporary entity itself.
---They can hold useful data from the server and can be modified.
---
---[View Docs](https://lmaobox.net/lua/Lua_Classes/TempEntity/)
---@class TempEntity
local TempEntity = {}

--[[ Methods ]]

---Returns the network name of the TempEntity
---@return string
function TempEntity:GetNetworkName() end

---Releases the temporary entity - Do not call this for entities you did not create.
---Only call this if you created this TempEntity to avoid crashes.
function TempEntity:Release() end

---Triggers the temporary entity.
---For effects in spawns an effect, like an explosion, for others it will do whatever the TempEntity is programmed to perform.
---@param dataUpdateType integer
function TempEntity:GetNetworkName(dataUpdateType) end

--[[ Netvars/props ]]

---Returns the float value of the given netvar.
---@param ... string
---@return number
---@nodiscard
function TempEntity:GetPropFloat(...) end

---Returns the int value of the given netvar.
---@param ... string
---@return integer
---@nodiscard
function TempEntity:GetPropInt(...) end

---Returns the bool value of the given netvar.
---@param ... string
---@return boolean
---@nodiscard
function TempEntity:GetPropBool(...) end

---Returns the string value of the given netvar.
---@param ... string
---@return string
---@nodiscard
function TempEntity:GetPropString(...) end

---Returns the vector value of the given netvar.
---@param ... string
---@return Vector3
---@nodiscard
function TempEntity:GetPropVector(...) end

---Returns the Entity class of the given netvar, usually those that has prefix: `m_hXXXX`.
---@param ... string
---@return Entity handle
---@nodiscard
function TempEntity:GetPropEntity(...) end

---Sets the float value of the given netvar.
---@param value number
---@param ... string
function TempEntity:SetPropFloat(value, ...) end

---Sets the int value of the given netvar.
---@param value integer
---@param ... string
function TempEntity:SetPropInt(value, ...) end

---Sets the bool value of the given netvar.
---@param value boolean
---@param ... string
function TempEntity:SetPropBool(value, ...) end

---Set the entity value of the given netvar.
---@param value Entity
---@param ... string
function TempEntity:SetPropEntity(value, ...) end

---Set the vector value of the given netvar.
---@param value Vector3
---@param ... string
function TempEntity:SetPropVector(value, ...) end

--[[ Prop Data Tables ]]

---Returns a table of floats, index them with integers based on context of the netvar.
---@param ... string
---@return table<integer, number>
function TempEntity:GetPropDataTableFloat(...) end

---Returns a table of bools, index them with integers based on context of the netvar.
---@param ... string
---@return table<integer, boolean>
function TempEntity:GetPropDataTableBool(...) end

---Returns a table of ints, index them with integers based on context of the netvar.
---@param ... string
---@return table<integer, integer>
function TempEntity:GetPropDataTableInt(...) end

---Returns a table of entities, index them with integers based on context of the netvar.
---@param ... string
---@return table<integer, Entity>
function TempEntity:GetPropDataTableEntity(...) end

---Sets the number value of the given netvar at the given index.
---@param value number
---@param index integer
---@param ... string
function TempEntity:SetPropDataTableFloat(value, index, ...) end

---Sets the bool value of the given netvar at the given index.
---@param value boolean
---@param index integer
---@param ... string
function TempEntity:SetPropDataTableBool(value, index, ...) end

---Sets the integer value of the given netvar at the given index.
---@param value integer
---@param index integer
---@param ... string
function TempEntity:SetPropDataTableInt(value, index, ...) end

---Sets the Entity value of the given netvar at the given index.
---@param value Entity
---@param index integer
---@param ... string
function TempEntity:SetPropDataTableEntity(value, index, ...) end
