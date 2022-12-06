---@meta

---@userdata itemschema
itemschema = {}

---Returns the item definition for the item with the given ID.
---@param id integer
function itemschema.GetItemDefinitionByID( id ) end

---Returns the item definition for the item with the given name.
---@param name string
function itemschema.GetItemDefinitionByName( name ) end

---Enumerates all item definitions, calling the callback for each one.
---@param callback fun(itemDefinition: ItemDefinition)
function itemschema.Enumerate(callback) end

---Returns the attribute definition for the item with the given name.
---@param name string
function itemschema.GetAttributeDefinitionByName( name ) end

---Enumerates all attribute definitions, calling the callback for each one.
---@param callback fun(attributeDefinition: AttributeDefinition)
function itemschema.EnumerateAttributes( callback ) end

return itemschema