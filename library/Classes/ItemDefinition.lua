---@meta

---The ItemDefinition object contains static information about an item. \
---Static information refers to information that is not changed during the course of the game.
---@class ItemDefinition
local ItemDefinition = {}

---Returns the name of the item.
---@return string
---@nodiscard
function ItemDefinition:GetName() end

---Returns the definition ID of the item.
---@return integer
---@nodiscard
function ItemDefinition:GetID() end

---Returns the class of the item.
---@return string
---@nodiscard
function ItemDefinition:GetClass() end

---Returns the loadout slot that the item should be placed in.
---@return E_LoadoutSlot
---@nodiscard
function ItemDefinition:GetLoadoutSlot() end

---Returns true if the item is hidden.
---@return boolean
---@nodiscard
function ItemDefinition:IsHidden() end

---Returns true if the item is a tool, such as a key.
---@return boolean
---@nodiscard
function ItemDefinition:IsTool() end

---Returns true if the item is a base item, such as a stock weapon.
---@return boolean
---@nodiscard
function ItemDefinition:IsBaseItem() end

---Returns true if the item is a wearable.
---@return boolean
---@nodiscard
function ItemDefinition:IsWearable() end

---Returns the name of the item in the language of the current player.
---@return string
---@nodiscard
function ItemDefinition:GetNameTranslated() end

---Returns the type name of the item.
---@return string
---@nodiscard
function ItemDefinition:GetTypeName() end

---Returns the description of the item.
---@return string
---@nodiscard
function ItemDefinition:GetDescription() end

---Returns the icon name of the item.
---@return string
---@nodiscard
function ItemDefinition:GetIconName() end

---Returns the base item name of the item.
---@return string
---@nodiscard
function ItemDefinition:GetBaseItemName() end

---Returns the static item attributes as a table where keys are AttributeDefinition objects and values are the values of the attributes.
---@return table<AttributeDefinition, any>
---@nodiscard
function ItemDefinition:GetAttributes() end
