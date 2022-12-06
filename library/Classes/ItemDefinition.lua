---@meta

---@class ItemDefinition
local ItemDefinition = {}

---Returns the name of the item.
---@return string
function ItemDefinition:GetName() end

---Returns the definition ID of the item.
---@return integer
function ItemDefinition:GetID() end

---Returns the class of the item.
---@return string
function ItemDefinition:GetClass() end

---Returns the loadout slot that the item should be placed in.
---@return integer
function ItemDefinition:GetLoadoutSlot() end

---Returns true if the item is hidden.
---@return boolean
function ItemDefinition:IsHidden() end

---Returns true if the item is a tool, such as a key.
---@return boolean
function ItemDefinition:IsTool() end

---Returns true if the item is a base item, such as a stock weapon.
---@return boolean
function ItemDefinition:IsBaseItem() end

---Returns true if the item is a wearable.
---@return boolean
function ItemDefinition:IsWearable() end

---Returns the name of the item in the language of the current player.
---@return string
function ItemDefinition:GetNameTranslated() end

---Returns the type name of the item.
---@return string
function ItemDefinition:GetTypeName() end

---Returns the description of the item.
---@return string
function ItemDefinition:GetDescription() end

---Returns the icon name of the item.
---@return string
function ItemDefinition:GetIconName() end

---Returns the base item name of the item.
---@return string
function ItemDefinition:GetBaseItemName() end

---Returns the static item attributes as a table where keys are AttributeDefinition objects and values are the values of the attributes.
---@return table<AttributeDefinition, any>
function ItemDefinition:GetAttributes() end