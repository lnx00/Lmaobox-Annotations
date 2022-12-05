---@meta

---@userdata itemschema
itemschema = {}

---Returns the item definition for the item with the given ID.
function itemschema.GetItemDefinitionByID( id:integer ) end

---Returns the item definition for the item with the given name.
function itemschema.GetItemDefinitionByName( name:string ) end

---Enumerates all item definitions, calling the callback for each one.
function itemschema.Enumerate( callback:function(itemDefinition) ) end

---Returns the attribute definition for the item with the given name.
function itemschema.GetAttributeDefinitionByName( name:string ) end

---Enumerates all attribute definitions, calling the callback for each one.
function itemschema.EnumerateAttributes( callback:function(attributeDefinition) ) end

return itemschema