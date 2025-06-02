---@meta

---The AttributeDefinition object contains information about an attribute in TF2.
---
---[View Docs](https://lmaobox.net/lua/Lua_Classes/AttributeDefinition/)
---@class AttributeDefinition
local AttributeDefinition = {}

---Returns the name of the attribute.
---@return string
---@nodiscard
function AttributeDefinition:GetName() end

---Returns the ID of the attribute.
---@return integer
---@nodiscard
function AttributeDefinition:GetID() end

---Returns true if the attribute is stored as an integer. \
---For numeric attibutes, false means it is stored as a float.
---@return boolean
---@nodiscard
function AttributeDefinition:IsStoredAsInteger() end
