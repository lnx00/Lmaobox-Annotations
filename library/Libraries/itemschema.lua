---@meta

---The itemschema library contains functions for retrieving information about items.
---Items referred to in this library are of the ItemDefinition type.
---
---[View Docs](https://lmaobox.net/lua/Lua_Libraries/itemschema/)
---@class itemschema
itemschema = {}

---Returns the item definition for the item with the given ID.
---@param id integer
---@return ItemDefinition
---@nodiscard
function itemschema.GetItemDefinitionByID( id ) end

---Returns the item definition for the item with the given name.
---@param name string
---@return ItemDefinition
---@nodiscard
function itemschema.GetItemDefinitionByName( name ) end

---Enumerates all item definitions, calling the callback for each one.
---@param callback fun(itemDefinition: ItemDefinition)
function itemschema.Enumerate(callback) end

---Returns the attribute definition for the item with the given name.
---@param name string
---@return AttributeDefinition
---@nodiscard
function itemschema.GetAttributeDefinitionByName( name ) end

---Enumerates all attribute definitions, calling the callback for each one.
---@param callback fun(attributeDefinition: AttributeDefinition)
function itemschema.EnumerateAttributes( callback ) end

return itemschema