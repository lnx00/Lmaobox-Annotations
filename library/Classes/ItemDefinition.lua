---@meta

---@class ItemDefinition
local ItemDefinition = {}

---Returns the name of the item.
function ItemDefinition:GetName() end

---Returns the definition ID of the item.
function ItemDefinition:GetID() end

---Returns the class of the item.
function ItemDefinition:GetClass() end

---Returns the loadout slot that the item should be placed in.
function ItemDefinition:GetLoadoutSlot() end

---Returns true if the item is hidden.
function ItemDefinition:IsHidden() end

---Returns true if the item is a tool, such as a key.
function ItemDefinition:IsTool() end

---Returns true if the item is a base item, such as a stock weapon.
function ItemDefinition:IsBaseItem() end

---Returns true if the item is a wearable.
function ItemDefinition:IsWearable() end

---Returns the name of the item in the language of the current player.
function ItemDefinition:GetNameTranslated() end

---Returns the type name of the item.
function ItemDefinition:GetTypeName() end

---Returns the description of the item.
function ItemDefinition:GetDescription() end

---Returns the icon name of the item.
function ItemDefinition:GetIconName() end

---Returns the base item name of the item.
function ItemDefinition:GetBaseItemName() end

---Returns the static item attributes as a table where keys are AttributeDefinition objects and values are the values of the attributes.
function ItemDefinition:GetAttributes() end